import numpy as np
from scipy.io import wavfile
from matplotlib import pyplot
fs = 10000

samples = np.arange(0,10,1/fs)
samples = np.arange(0,10,1/fs)


signal = np.sin(2 * np.pi * 0.2 * 1000 * samples)+np.sin(2 * np.pi * 0.3 * 6000 * samples)

signal *= 32768
plt = pyplot.plot(signal)
pyplot.savefig('fig.png')
signal = np.int16(signal)

f = open('FIR_filter/sin.txt','w+')
f2 = open('FIR_filter/sin2.txt','w+')
for i in signal:
    ib = 0
    if i >= 0:
        ib = format(i,'b').zfill(16)
    if i < 0:
        ib = format((pow(2,16)-abs(i)),'b').zfill(16)
    f.write((ib)+'\n')
    f2.write(str(i)+'\n')
