FROM mcr.microsoft.com/dotnet/framework/runtime:4.8

RUN mkdir /procon
WORKDIR /procon

RUN Invoke-WebRequest -Uri "https://api.myrcon.net/procon/download?p=docker" -OutFile "app.zip"
RUN Expand-Archive -Path "app.zip" -DestinationPath "./"

VOLUME /procon/Configs
VOLUME /procon/Logs

ENTRYPOINT ["PRoCon.Console.exe"]
