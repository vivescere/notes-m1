#!/usr/bin/env bash
time fd '' s{6,7} -d 1 -x make -C {} \; -j 8
