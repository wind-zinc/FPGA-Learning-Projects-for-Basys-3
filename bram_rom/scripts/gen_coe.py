import math
import os

# =================配置区域=================
DEPTH = 1024      # 深度
WIDTH = 16        # 位宽
FILENAME = "sine_wave.coe"
# =========================================


script_dir = os.path.dirname(os.path.abspath(__file__))
full_path = os.path.join(script_dir, FILENAME)

print(f"正在生成文件...")
print(f"目标路径: {full_path}")

try:
    with open(full_path, 'w') as f:
        f.write("memory_initialization_radix=10;\n")
        f.write("memory_initialization_vector=\n")
        
        for i in range(DEPTH):
            angle = (i / DEPTH) * 2 * math.pi
            # 转换成 0 ~ 65535 的无符号整数
            val = int((math.sin(angle) + 1) * (2**WIDTH / 2 - 1))
            
            if i == DEPTH - 1:
                f.write(f"{val};")
            else:
                f.write(f"{val},\n")

    print(f"✅ Generated sine_wave.coe beside this script.")

except Exception as e:
    print(f"❌ 依然报错：{e}")

print("\n按回车键退出...")
input()
