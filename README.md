# Build Status
[![Build status](https://ci.appveyor.com/api/projects/status/mbgssfkx68myrxo3?svg=true)](https://ci.appveyor.com/project/JohnStratoudakis/labview-docker)

# To do
Check out this link, when I get some time I will try to follow it
http://stry.kr/2020/06/09/contain-your-excitement/

# Development Status
Builds a Docker Image with 3 of the LabVIEW 2018 runtime msi modules installed.

# Instructions

## Start powershell.exe

 * Start->Run
 * powershell.exe

## Build docker image

From powershell, execute 'build.ps1'

(build.ps1 calls docker build -t johnstratoudakis/labview_test .)

## Run docker image

From powershell, execute 'run.ps1'

## Usage

Now you will have been dropped inside a docker container with the LabVIEW 2018 runtime installed.
Explore and take a look at the directory.

You will have to modify the run.ps1 script to make the directories match your system configuration.
The -v option maps the first directory which should exist outside the docker image to the second directory accessible from within the docker container.

Note: A docker image is called a container after it has been started.
