import matplotlib.pyplot as plt
import numpy as np
from functiongenerator import Generator
from deviceCommunication import Communication

commands = {"help":"prints all possible commands with short description", 
            "?":"same as help", 
            "bist":"starts build-in self test and reads test report",
            "connect <serial_port>":"connect to device connected to specified COM port",
            "generate":"starts signal generation",
            "load":"loads samples data to DDS memory",
            "reset":"sets all DDS counters and phase accumulator to 0, resets BIST and serializers state",
            "step <value>":"loads <value> to DDS as phase step, only positive integers values are allowed, default 1",
            "stop":"disables signal generation",
            "prepare <signal> <amplitude> <offset> <N>":"starts data generation process \n"
                                                        "\t\t\t\t\t\t<signal> - signal types: sine, rectangle, triangle, sawtooth, default sine\n"
                                                        "\t\t\t\t\t\t<amplitude> - signal amplitude defined as percent of full scale, only positive values, floats are allowed, default 50%\n"
                                                        "\t\t\t\t\t\t<offset> - DC offset defined as percent of full scale, floats are allowed, default 50%\n"
                                                        "\t\t\t\t\t\t<N> - number of periods of signal written in memory, only positive integers values are allowed, default 1",
            "quit":"disconnects target device, closes serial port session end exits code"}


signalTypes = ["sine", "rectangle", "triangle", "sawtooth"]
fgen = None
wAddr = 10
wData = 64
wSample = 8
wStep = 16
wPA = 24
MaxStep = 2**wStep-1
MinStep = 1
recommendedMaxStep = 2**wStep-1
recommendedMinStep = 1

defaultStep = 1
defaultSignalType = "sine"
defaultAmplitude = 50.0
defaultOffset = 50.0
defaultN = 1

device = None

errors = []
warnings = []

def GenerateData(command: str):
    command += " "
    error = 0
    warning = 0
    idx = command.find(" ")
    signalType = command[idx+1:command.find(" ", idx+1)]
    if signalType not in signalTypes:
        error += 1
        errors.append("Signal type error: wrong type, default type will be used")
        print(errors[-1])
        signalType = defaultSignalType
    idx = command.find(" ", idx+1)
    if idx > 0:
        try:
            amplitude = float(command[idx+1:command.find(" ", idx+1)])
        except:
            error += 1
            errors.append("Amplitude error: expected float value, default value will be used")
            print(errors[-1])
            amplitude = defaultAmplitude
        idx = command.find(" ", idx+1)
    else:
        warning += 1
        warnings.append("Amplitude warning: expected value, but got nothing, default value will by used")
        print(warnings[-1])
        amplitude = defaultAmplitude
    if idx > 0:
        try:
            offset = float(command[idx+1:command.find(" ", idx+1)])
        except:
            error += 1
            errors.append("Offset error: expected float value, default value will be used")
            print(errors[-1])
            offset = defaultOffset
        idx = command.find(" ", idx+1)
    else:
        warning += 1
        warnings.append("Offset warning: expected value, but got nothing, default value will by used")
        print(warnings[-1])
        offset = defaultOffset
    if amplitude + offset > 100.0:
        warning += 1
        warnings.append("Signal warning: max value exceeds full scale, signal will be limited")
        print(warnings[-1])
    if offset - amplitude < 0:
        warning += 1
        warnings.append("Signal warning: min value exceeds full scale, signal will be limited")
        print(warnings[-1])
    if idx > 0:
        try:
            N = int(command[idx+1:])
        except:
            error += 1
            errors.append("Number of periods error: expected positive integer value, default value will be used")
            print(errors[-1])
            N = defaultN
        if N < 1:
            warning += 1
            warnings.append("Number of periods warning: expected positive value, but got negative, default value will be used")
            print(warnings[-1])
            N = defaultN
        if N > 1024:
            warning += 1
            warnings.append("Number of periods warning: maximum number of periods is 1024, but given value exceeds maximum range, default value will be used")
    else:
        warning += 1
        warnings.append("Number of periods warning: expected value, but got nothing, default value will be used")
        print(warnings[-1])
        N = defaultN
    print(f"SignalType: {signalType}\tAmplitude: {amplitude}\tOffset: {offset}\tPeriods: {N}\nTotal errors: {error}\nTotal warnings: {warning}")
    fgen = Generator(amplitude/100, 1, 2**wAddr*wData/wSample, signalTypes.index(signalType), N)
    signal = fgen.y + offset/100
    fgen.quantize(2**wSample, offset/100)
    data = fgen.clamp(0, 2**wSample-1)
    t = np.linspace(0, 1-1/(2**wAddr*wData/wSample), int(2**wAddr*wData/wSample))
    # print(data)
    # print(len(t))
    # print(len(data))
    ppValue = np.max(data) - np.min(data)

    dy = np.zeros(int(2**wAddr*wData/wSample))
    for i in range(len(data)):
        if i < len(data) - 1:
            dy[i] = data[i+1] - data[i]
        else:
            dy[i] = data[0] - data[i]
        if np.abs(dy[i]) == ppValue:
            dy[i] = dy[i-1]

    # dy_samples = np.copy(dy)
    dySamples = np.reshape(dy, (int(2**wAddr), int(wData/wSample)))
    # print(dySamples)
    # print(len(dySamples))
    # print(len(dySamples[0]))
    dyMax = np.max(np.abs(dySamples))
    # print(dyMax)
    dySamplesMean = np.sum(np.abs(dySamples), axis=1)/(wData/wSample)
    # print(dySamplesMean)
    dySamplesMeanMax = np.max(dySamplesMean)
    # print(dySamples[0:10])
    # print(dySamplesMeanMax)

    if dySamplesMeanMax <= 0.125:
        recommendedMinStep = 1
        recommendedMaxStep = 2**(wPA - wAddr)
    else:
        recommendedMinStep = 2**(wPA-wAddr)
        recommendedMaxStep = 2**(wStep)

    print(f"recommended min phase step is {recommendedMinStep}")
    print(f"recommended max phase step is {recommendedMaxStep}")

    plt.subplot(2, 1, 1)
    plt.plot(t*N, signal)
    plt.xlabel("normalized time")
    plt.ylabel("normalized amplitude")
    plt.title("expected signal")
    plt.grid()

    plt.subplot(2, 1, 2)
    plt.scatter(t*2**wAddr*wData/wSample, data)
    # plt.scatter(t*2**wAddr*wData/wSample, dy)
    plt.xlabel("sample index")
    plt.ylabel("amplitude")
    plt.title("output signal")
    plt.grid()
    plt.subplots_adjust(hspace=0.5)
    plt.show()

    # sprawdzic paczki po 8 probek, jesli max-min szacowac zakres step wedlug max-min w paczkach
    return data, recommendedMinStep, recommendedMaxStep

def ConnectDevice(command: str):
    idx = command.find("com")
    if idx > 0 and len(command[idx:]) > 3:
        port = str(command[idx:])
        port = port.upper()
    else:
        port = "COM1"
        print("Communication warning: Not specified serial port, trying to use default port...")
    device = Communication(port)

    # print("Connect device")
    return device

def GenerateSignal(device: Communication):
    if device == None:
        print("Connection error: Device not found")
        return 0
    # device.Send("gene")
    print("Signal generation enabled")

def LoadData(device: Communication, data: np.ndarray):
    if device == None:
        print("Connection error: Device not found")
        return -1
    if len(data) <= 0:
        print("Data loading error: Data is empty")
        return -1
    # device.Send("load")
    for i in range(len(data)):
        sample = str(int(data[i]))
        while len(sample) < 3:
            sample = "0" + sample
        # if device.serial.is_open:
        #     device.Send(sample)

    print("Data loaded")

def BIST(device: Communication):
    if device == None:
        print("Connection error: Device not found")
        return -1
    # device.Send("bist")
    print("BIST enable")
    # wysylanie value\n OK\n
    # passed = device.Read()
    # failed = device.Read()
    # allTests = device.Read()
    # print(f"Tests passed: {passed}/{allTests}\tTests failed: {failed}/{allTests}")

def LoadStep(device: Communication, command: str, minStep: float, maxStep:float):
    if device == None:
        print("Connection error: Device not found")
        return -1
    command += " "
    error = len(errors)
    warning = len(warnings)
    idx = command.find(" ")
    if idx > 0:
        try:
            step = int(command[idx:])
            print(step)
        except:
            error += 1
            errors.append("Step error: expected positive integer value, default value will be used")
            print(errors[-1])
            step = defaultStep
        if step < 1:
            warning += 1
            warnings.append("Step warning: expected positive integer value greater or equal 1, but got lower, default value will be used")
            print(warnings[-1])
            step = defaultStep
    else:
        warning += 1
        warnings.append("Step warning: expected positive integer value greater or equal 1, but got nothing, default value will be used")
        print[warnings[-1]]
        step = defaultStep
    print(step)
    print(minStep)
    print(maxStep)
    if step < minStep or step > maxStep:
        warning += 1
        warnings.append("Step warning: phase step is outside of recommended range, generated signal may be distorted")
        print(warnings[-1])

    step = str(step)
    while len(str(step)) < 5:
        step = "0" + step
    # device.Send("step")
    # device.Send(step)
    print("Phase step loaded")

def ResetDevice(device: Communication):
    if device == None:
        print("Connection error: Device not found")
        return -1
    # device.Send("rset")
    print("Device reset")
def CloseDevice(device: Communication):
    if device == None:
        print("Connection error: Device not found")
        return -1
    # device.Disconnect()
    
    print("Device disconnected")

if __name__ == "__main__":
    command = ""
    signal = None
    while command != "quit":
        command = str(input(">"))
        command = command.lower()
        if command == "help" or command == "?":
            # print(commands)
            for key, value in commands.items():
                tabs = "\t"
                tabLen = 40
                while len(key) + 8*len(tabs) + 1< tabLen:
                    tabs += "\t"
                print(f"{key}:{tabs} {value}")
        elif command.find("prepare") == 0:
            signal, recommendedMinStep, recommendedMaxStep = GenerateData(command)
        elif command == "bist":
            BIST(device)
        elif command.find("connect") == 0:
            device = ConnectDevice(command)
        elif command == "generate":
            GenerateSignal(device)
        elif command == "load":
            LoadData(device, signal)
        elif command == "reset":
            ResetDevice(device)
        elif command.find("step") == 0:
            LoadStep(device, command, recommendedMinStep, recommendedMaxStep)
        elif command.find("quit") == 0:
            CloseDevice(device)
        else:
            print("Unknown command")


        # policzyc pochodna element po elemencie -> modul -> usunac wartosci rowne p-p (zastapic poprzednia waroscia du/dt) -> pogrupowac po 8 -> policzyc maks rozrzut/pakiet probek -> oszacowac krok fazowy