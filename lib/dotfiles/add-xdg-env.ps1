[System.Environment]::SetEnvironmentVariable('XDG_CONFIG_HOME', "${env:USERPROFILE}\.local\etc", [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable('XDG_DATA_HOME', "${env:USERPROFILE}\.local\share", [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable('XDG_CACHE_HOME', "${env:USERPROFILE}\.local\var\cache", [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable('XDG_STATE_HOME', "${env:USERPROFILE}\.local\var\lib", [System.EnvironmentVariableTarget]::User)
