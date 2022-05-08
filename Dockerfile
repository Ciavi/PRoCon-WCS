FROM mcr.microsoft.com/dotnet/framework/runtime:4.8

WORKDIR /procon

RUN powershell Invoke-WebRequest -Uri "https://api.myrcon.net/procon/download?p=docker" -OutFile "app.zip"
RUN powershell Expand-Archive -Path "app.zip" -DestinationPath "./"

WORKDIR /procon/Configs
VOLUME /procon/Configs

WORKDIR /procon/Logs
VOLUME /procon/Logs

WORKDIR /procon/Plugins
VOLUME /procon/Plugins

WORKDIR /procon

ENTRYPOINT ["PRoCon.Console.exe"]
