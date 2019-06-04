# Always used
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import logging
import os, sys

# set default paths
home = os.environ['HOME']
git_dir = os.path.join(home, 'git')
forked_dir = os.path.join(home, 'forked')
sys.path.append(git_dir)  # find tommy lib
sys.path.append(forked_dir)  # find forked packages

# required to run deeplab
sys.path.append(forked_dir, 'models/research')
sys.path.append(forked_dir, 'models/research/slim')

# dont display DEBUG matplotlib messages
mpl_logger = logging.getLogger('matplotlib')
mpl_logger.setLevel(logging.WARNING)

#sys.path.append(github_dir)
#import tlib.plot as tpl
#import tlib.notebook as tnb
#tpl.test()

#from beakerx import *
