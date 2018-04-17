# Build Status
[![Build status](https://ci.appveyor.com/api/projects/status/mbgssfkx68myrxo3?svg=true)](https://ci.appveyor.com/project/JohnStratoudakis/labview-docker)

# Development Status
Currently this supports Python, LabVIEW is next, followed by LabVIEW FPGA.

# Goals

## Stage 1
Build docker image based on official windows server core

 * docker build -t johnstratoudakis/pythontest .

Install python runtime
 * Copied code from https://github.com/docker-library/python/blob/master/3.6/windows/windowsservercore-1709/Dockerfile

Execute python script

## Stage 2
Install LabVIEW 2017 runtime

Install and run LabVIEW application


# Issues
If you get that annoying error about TLS/SSL, try changing the version of Tls
I fixed this error by adding the following line:
  [Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
