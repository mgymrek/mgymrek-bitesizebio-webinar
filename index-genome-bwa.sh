#!/bin/bash

REFFASTA=$1

cd $(dirname ${REFFASTA})
bwa index ${REFFASTA}
