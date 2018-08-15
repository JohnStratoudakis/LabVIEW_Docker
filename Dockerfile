FROM microsoft/windowsservercore

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

# Copy and install LabVIEW 2018 runtime
COPY ./LV2018/ /build/LV2018

RUN Start-Process msiexec.exe -ArgumentList '/i', 'C:\build\LV2018\LV2018runtime.msi', '/quiet', '/norestart' -NoNewWindow -Wait
RUN Start-Process msiexec.exe -ArgumentList '/i', 'C:\build\LV2018\LV2018rtdnet.msi', '/quiet', '/norestart' -NoNewWindow -Wait
RUN Start-Process msiexec.exe -ArgumentList '/i', 'C:\build\LV2018\lvrteres\LV2018rteres.msi', '/quiet', '/norestart' -NoNewWindow -Wait
