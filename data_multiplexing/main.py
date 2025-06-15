import numpy as np
import matplotlib.pyplot as plt

def nextAddr(currAddr, step):
    return currAddr + step


w_addr = 8
w_sum = 16
currSum = 0
currAddr = 0
step = 25
cnt = 0
addr = []


while (currSum < 2**w_sum-1):
    currSum = nextAddr(currSum, step)
    currAddr = currSum >> (w_sum - w_addr)
    addr.append(currAddr)
    cnt += 1

occurances = []
for i in range(2**w_addr):
    print(f"occurance of {i}: {addr.count(i)}")

# print(addr)
print(cnt)
counts = np.linspace(0, cnt-1, cnt)
plt.scatter(counts[:-1], addr[:-1])
# plt.scatter(counts[:-1], addr[:-1] - counts[:-1])     #error calc only for step 255
plt.grid()
plt.show()

