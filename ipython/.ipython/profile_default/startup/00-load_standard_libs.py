# Always used
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Import tlib
import os, sys
home = os.environ['HOME']
git_dir = os.path.join(home, 'git')
sys.path.append(git_dir)  # find tommy lib
import tlib.plot as tpl
import tlib.notebook as tnb
#tpl.test()

