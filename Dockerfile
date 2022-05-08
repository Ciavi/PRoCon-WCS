FROM mcr.microsoft.com/dotnet/framework/runtime:4.8

WORKDIR /procon

RUN pwsh Invoke-WebRequest -Uri "https://api.myrcon.net/procon/download?p=docker" -OutFile "app.zip"
RUN pwsh Expand-Archive -Path "app.zip" -DestinationPath "./"

VOLUME c:\\procon\\Configs
VOLUME c:\\procon\\Logs
VOLUME c:\\procon\\Plugins

ENTRYPOINT ["PRoCon.Console.exe"]
