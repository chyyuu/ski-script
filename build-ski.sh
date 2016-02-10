#!/bin/bash

VMM_DIR=$(dirname $0)/../vmm

(cd $VMM_DIR/stktrace && make)
(cd $VMM_DIR && ./configure-ski && make && make install)
