import serial
import time

# 配置串口参数
# 请确保 COM 端口号与你电脑设备管理器中显示的一致
try:
    ser = serial.Serial(port='COM4', baudrate=9600, timeout=1)
except Exception as e:
    print(f"无法打开串口: {e}")
    exit()

def convert_temp(adc_val):
    # XADC 12位原始数据转温度公式:
    # Temperature (C) = (ADC_Value * 503.975 / 4096) - 273.15
    temp = (adc_val * 503.975 / 4096.0) - 273.15
    return temp

print("--- FPGA 温度计 (12-bit) ---")
print(f"正在从 {ser.port} 读取数据...")

try:
    while True:
        # 因为 FPGA 每秒发 2 个字节，所以我们判断缓冲区是否有至少 2 个字节
        if ser.in_waiting >= 2:
            # 读取 2 个字节
            raw_data = ser.read(2)
            
            # 拼接数据: 
            # raw_data[0] 是高字节 (0000 + 4位数据)
            # raw_data[1] 是低字节 (8位数据)
            val = (raw_data[0] << 8) | raw_data[1]
            
            # 计算温度
            temp_c = convert_temp(val)
            
            # 打印结果
            timestamp = time.strftime("%H:%M:%S")
            # \r 表示回到行首，不换行显示
            print(f"[{timestamp}] 原始数据: 0x{val:03X} | 实时温度: {temp_c:.2f} °C", end='\r')
            
        time.sleep(0.1) # 稍作停顿，降低 CPU 占用

except KeyboardInterrupt:
    print("\n程序已停止")
    ser.close()