#!/bin/bash
set -euo pipefail

# Fix bug in CycleCloud that is not dampening memory for scale provided in cluster config
cp /etc/slurm/azure.conf /etc/slurm/azure.conf.bak
sed -i 's/19496/18880/g' /etc/slurm/azure.conf.bak
sed -i 's/1871667/1812561/g' /etc/slurm/azure.conf.bak
mv /etc/slurm/azure.conf.bak /etc/slurm/azure.conf