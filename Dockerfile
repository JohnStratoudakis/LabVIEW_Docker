FROM microsoft/windowsservercore

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]


COPY ./LV2018/ /build/LV2018

#RUN Start-Process C:\build\LVRTE2017SP1_f1Patchstd\setup.exe -Wait \
#        -ArgumentList @('/q', '/AcceptLicenses', 'yes', '/r', '/disableNotificationCheck', '/confirmCriticalWarnings', '/l*v', 'setup.log'); Write-Host 'end';

#RUN powershell.exe Write-Host 'hello world'; Start-Process C:\build\LV2017runtime.msi -Wait -ArgumentList @('/q', 'REBOOT=ReallySuppress', '/l*v', 'log.log'); Write-Host 'end';

#RUN Start-Process C:\build\2018LVRTE-Std\setup.exe  -ArgumentList @('/q', '/AcceptLicenses', 'yes', '/r', '/disableNotificationCheck', '/confirmCriticalWarnings', '/log', 'C:/lvrtsetup.log') -Wait -NoNewWindow

# The following line works
RUN Start-Process msiexec.exe -ArgumentList '/i', 'C:\build\LV2018\LV2018runtime.msi', '/quiet', '/norestart' -NoNewWindow -Wait

#COPY ./apps/ /build/apps/
