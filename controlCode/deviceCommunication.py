import serial
import serial.tools.list_ports as serialInfo

class Communication():
    def __init__(self, autoconnect):
        self.autoConnect = autoconnect
        self.baudRate = 115200
        ports = serialInfo.comports()
        portsDev = []
        for port in ports:
            portsDev.append(port.device)
        
        if self.autoConnect in portsDev:
            self.Connect(self.autoConnect)
        else: 
            print("Autoconnection failed, select one from following ports:")
            self.ShowDevices()

    def Connect(self, device):
        print("Connecting...")
        self.serial = serial.Serial(device, self.baudRate, 8, 'N', 1)

    def Disconnect(self):
        self.serial.close()

    def ShowDevices(self):
        
        while True:
            ports = serialInfo.comports()

            print("0.\tDont try connected")
            for (i, port) in enumerate(ports):
                print(f"{i+1}.\t{port.device} -- {port.name}")
            
            print(f"{len(ports)+1}.\tScan again")

            choose = -1
            while choose == -1:
                try:
                    choose = int(input("?: "))
                except ValueError:
                    print("Choice only number!")

                if choose > len(ports)+1:
                    choose = -1
                    print("This port dont exist!")
                    continue

            if choose == len(ports)+1:
                continue
            break

        if choose != 0:
            self.Connect(ports[choose-1].device)

    def Send(self, data):
        data = data.encode("utf-8")
        self.serial.write(data)

    def Read(self):
        data = []
        line = ""

        while line != "OK":
            line = self.serial.readline().decode("utf-8")
            line = line[0:-1]

            data.append(line)
        
        if (data.count == 0):
            return 1
        
        return data[:-1]