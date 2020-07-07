#!/usr/bin/env python2

from pintool import *
from triton  import ARCH, MODE

if __name__ == '__main__':
    ctx = getTritonContext()
    ctx.enableMode(MODE.ONLY_ON_TAINTED, True)
    startAnalysisFromEntry()
    runProgram()
