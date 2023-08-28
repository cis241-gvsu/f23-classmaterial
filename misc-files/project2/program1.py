import argparse
import time
import random

parser = argparse.ArgumentParser()
parser.add_argument("n",type=int)
args = parser.parse_args()
n = args.n

x = random.sample(range(1000), k=n)
y = random.sample(range(1000), k=n)
res = 0
timeavg = 0
ntrials = 20
for i in range(ntrials):
    start = time.time()
    for i in range(n):
        res += x[i]*y[i]
    end = time.time()
    timeavg += end-start
timeavg = timeavg / float(ntrials)

print(n,timeavg)
