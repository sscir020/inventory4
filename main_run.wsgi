
import sys,os

#sys.path.insert(0,"D:\projects\inventory4")
sys.path.insert(0,os.path.split(os.path.realpath(__file__))[0])


from main_run import app

application=app