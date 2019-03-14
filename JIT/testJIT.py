# -*- coding: utf-8 -*-

# @Time    : 2019/1/20 14:17
# @Author  : WYJ
# @Email   : 1054469230@qq.com
# @File    : testJIT.py
# @Software: PyCharm
# @version : 3.6
# @Function: 

import os
import sys

if sys.version[0] == "2":
    reload(sys)
    sys.setdefaultencoding("utf-8")

import torch
import torchvision
traced_net = torch.jit.trace(torchvision.models.resnet18(),
                             torch.rand(1, 3, 224, 224))
traced_net.save("D:/model.pt")