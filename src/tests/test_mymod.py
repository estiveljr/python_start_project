import os,sys
from pathlib import Path
root = Path().absolute()
modules_path = os.path.join(root,'src')
sys.path.append(modules_path)

from modules import mymod

def test_divbytwo():
    assert 5 == mymod.divbytwo(10)


