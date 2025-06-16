import numpy as np
import matplotlib.pyplot as plt
from functiongenerator import Generator

if __name__ == "__main__":
    signalTypes = ["sine", "rectangle", "triangle", "sawtooth"]
    fgen = None
    wAddr = 10
    wData = 64
    wSample = 8
    wStep = 16
    wPA = 24

    signalType = "sine"
    amplitude = 50
    offset = 50
    N = 1

    fgen = Generator(amplitude/100, 1, 2**wAddr*wData/wSample, signalTypes.index(signalType), N)
    signal = fgen.y + offset/100
    fgen.quantize(2**wSample, offset/100)
    data = fgen.clamp(0, 2**wSample-1)
    t = np.linspace(0, 1-1/(2**wAddr*wData/wSample), int(2**wAddr*wData/wSample))

    plt.subplot(2, 1, 1)
    plt.plot(t*N, signal)
    plt.xlabel("normalized time")
    plt.ylabel("normalized amplitude")
    plt.title("expected signal")
    plt.grid()

    plt.subplot(2, 1, 2)
    plt.scatter(t*2**wAddr*wData/wSample, data)
    plt.xlabel("sample index")
    plt.ylabel("amplitude")
    plt.title("output signal")
    plt.grid()
    plt.subplots_adjust(hspace=0.5)
    plt.show()

    hexData = []
    filePath = "MemoryData.mem"
    file = open(filePath, "w")
    sample = 0
    for i in range(int(2**wAddr*wData/wSample)):
        hexVal = hex(int(data[i]))
        hexVal = hexVal.replace("0x", "")
        if len(hexVal) < 2:
            hexVal = "0" + hexVal
        hexData.append(hexVal)
        if sample < 7:
            file.write(hexVal)
            sample += 1
        else:
            file.write(hexVal + "\n")
            sample = 0
    print(hexData)
    file.close()
    
