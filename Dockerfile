FROM mcr.microsoft.com/dotnet/framework/runtime:4.8

WORKDIR /procon

RUN Invoke-WebRequest -Uri "https://api.myrcon.net/procon/download?p=docker" -OutFile "app.zip"
RUN Expand-Archive -Path "app.zip" -DestinationPath "./"

VOLUME /procon/Configs
VOLUME /procon/Logs
VOLUME /procon/Plugins

ENTRYPOINT ["PRoCon.Console.exe"]
