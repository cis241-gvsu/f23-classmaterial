import argparse
import time
import random

parser = argparse.ArgumentParser()
parser.add_argument("n",type=int)
args = parser.parse_args()
n = args.n

A = [random.sample(range(500), k=n) for j in range(n)]
B = [random.sample(range(500), k=n) for j in range(n)]
res = [[0 for i in range(n)] for j in range(n)]
timeavg = 0
ntrials = 10
for i in range(ntrials):
    start = time.time()
    for i in range(n):
        for j in range(n):
            for k in range(n):
                res[i][j] += A[i][k]*B[k][j]
    end = time.time()
    timeavg += end-start
timeavg = timeavg / float(ntrials)
print(n,timeavg)
