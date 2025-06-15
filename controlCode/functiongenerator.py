import numpy as np
from scipy.fft import fft
#import matplotlib.pyplot as plt


class Generator():
    def __init__(self, amplitude, time, sampling, wave, frequency=1.0):
        self.a = amplitude
        self.t = time
        self.s = sampling
        self.w = wave
        self.f = frequency
        self.x = np.linspace(0, self.t, int(self.t*self.s))
        self.func = [self.sine, self.rectangle, self.triangle, self.sawtooth]
        self.y = self.func[self.w]()

    def sine(self):
        self.y = self.a * np.sin(2*np.pi * self.f * self.x)
        return self.y

    def rectangle(self):
        self.y = self.a * np.sign(-np.sin(2*np.pi * self.f * self.x))
        self.y[0] = self.y[1]
        return self.y

    def triangle(self):
        self.y = 2 * self.a / np.pi * np.arcsin(np.sin(2 * np.pi * self.f * self.x))
        return self.y

    def sawtooth(self):
        self.y = 2*self.a/np.pi * np.arctan(np.tan(np.pi * self.f * self.x))
        return self.y

    def quantize(self, FS, offset):
        self.y = np.round((self.y + offset)*FS)
        return self.y
    
    def clamp(self, FSmin, FSmax):
        self.y = np.clip(self.y, FSmin, FSmax)
        return self.y


#def test():
#    sine = Generator(1, 10, 1000, 0, 0.5)
#    plt.plot(sine.x, sine.y)
#    plt.grid()
#    plt.show()
#
#    rect = Generator(1, 10, 1000, 1, 2)
#    plt.plot(rect.x, rect.y)
#    plt.grid()
#    plt.show()
#
#    tria = Generator(1, 10, 1000, 2, 2)
#    plt.plot(tria.x, tria.y)
#    plt.grid()
#    plt.show()
#
#    sawt = Generator(1, 10, 1000, 3, 2)
#    plt.plot(sawt.x, sawt.y)
#    plt.grid()
#    plt.show()
#
#    whno = Generator(1, 10, 1000, 4)
#    plt.plot(whno.x, whno.y)
#    plt.grid()
#    plt.show()
#
#test()
