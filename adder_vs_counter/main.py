import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit

def RegLin(x, a ,b):
    return a * x + b

def InvFun(x, a):       # y =a/x
    return a/x


path = "adder_vs_counter/charadd.csv"
data = pd.read_csv(path, sep=',', header=2)

mod = data["mod"]
fcnt = 1e9/data["time_cnt"]
step = data["step"]
fadd = 1e9/data["time_add"]

addParams, addCovMatrix = curve_fit(RegLin, step, fadd)
cntParams, cntCovMatrix = curve_fit(InvFun, mod, fcnt)

print(f"add params: {addParams}\t add covariance matrix: {addCovMatrix}")
print(f"cnt params: {cntParams}\t cnt covariance matrix: {cntCovMatrix}")


fig = plt.figure()
fig.subplots_adjust(hspace=0.5)

plt.subplot(2, 1, 1)
plt.gca().ticklabel_format(axis='y', style='sci', scilimits=(0, 0))
plt.scatter(step, fadd)
plt.plot(step, RegLin(step, *addParams), color="orange")
plt.title("f_out(adder_step)")
plt.xlabel("step")
plt.ylabel("f_out")
plt.grid()

plt.subplot(2, 1, 2)
plt.scatter(mod, fcnt)
plt.plot(mod, InvFun(mod, *cntParams), color="orange")
plt.title("f_out(count_mod)")
plt.xlabel("counter mod")
plt.ylabel("f_out")
plt.grid()
plt.show()


