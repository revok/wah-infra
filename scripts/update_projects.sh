#!/bin/bash
git fetch && git pull
git submodule update --init --recursive --remote # check out master branches.
