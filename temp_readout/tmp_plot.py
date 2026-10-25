import serial
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
import sys

# --- 配置区 ---
PORT = 'COM4'  # 如果还是报错，请确认设备管理器里是 COM4 还是 COM3
BAUD = 9600
MAX_POINTS = 60 # 横轴显示多少个点（比如显示最近60秒）

# --- 初始化数据 ---
temp_history = []
time_index = []
counter = 0

# --- 尝试打开串口 ---
try:
    ser = serial.Serial(PORT, BAUD, timeout=1)
    print(f"成功连接到 {PORT}")
except Exception as e:
    print("\n" + "="*40)
    print(f"无法打开串口 {PORT}，原因: {e}")
    print("请检查：1. 串口是否被 SSCOM 或其他程序占用？")
    print("        2. 端口号是否真的是 " + PORT + "？")
    print("="*40)
    input("按回车键退出...")
    sys.exit()

# --- 转换函数 ---
def convert_temp(val):
    return (val * 503.975 / 4096.0) - 273.15

# --- 设置绘图 ---
plt.style.use('ggplot') # 使用一个漂亮的点状网格风格
fig, ax = plt.subplots()
line, = ax.plot([], [], 'r-o', markersize=4, linewidth=1.5) # 红色实线加圆点
ax.set_title("FPGA Real-time Temperature Monitor")
ax.set_xlabel("Time (s)")
ax.set_ylabel("Temperature (°C)")
ax.grid(True)

# 动画初始化
def init():
    ax.set_xlim(0, MAX_POINTS)
    ax.set_ylim(20, 50) # 初步设置温度范围 20-50度
    return line,

# 动画更新函数（每秒被调用一次）
def update(frame):
    global counter
    
    # 检查串口是否有足够数据 (2个字节)
    if ser.in_waiting >= 2:
        raw = ser.read(2)
        val = (raw[0] << 8) | raw[1]
        temp_c = convert_temp(val)
        
        # 更新数据
        temp_history.append(temp_c)
        time_index.append(counter)
        counter += 1
        
        # 保持显示最近的 MAX_POINTS 个点
        if len(temp_history) > MAX_POINTS:
            ax.set_xlim(counter - MAX_POINTS, counter)
            
        # 动态调整 Y 轴范围（防止温度超出显示范围）
        if temp_c > ax.get_ylim()[1] - 2 or temp_c < ax.get_ylim()[0] + 2:
            ax.set_ylim(min(temp_history)-5, max(temp_history)+5)

        line.set_data(time_index, temp_history)
        print(f"Time: {counter}s | Temp: {temp_c:.2f}°C", end='\r')

    return line,

# 启动动画
# interval=100 表示每 100ms 检查一次串口（保证实时性）
ani = FuncAnimation(fig, update, init_func=init, blit=True, interval=100, cache_frame_data=False)

try:
    plt.show()
except Exception as e:
    print(f"绘图窗口出错: {e}")
finally:
    ser.close()
    print("串口已关闭")