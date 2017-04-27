#!/bin/bash

# Client install and configure (using "mark-s2-tec")
mkdir -p $HOME/bin
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux-dev.tgz | tar -zxvf- -C $HOME/bin
testspace config url http://095d8acfaaf71b4a0f3767e41152620ebdda1b31:@mark.stridespace.com/box_Stress
testspace -v

sudo pip install pytest
# 1 Suite=2k test cases
py.test test_space.py --junitxml=test_space.xml -v --tb=no

testspace test_space.xml setup