#!/usr/bin/env bash
time fd '' s{1,2} -d 1 -x make -C {} \; -j 8
