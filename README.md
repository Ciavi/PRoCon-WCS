# PRoCon-WCS
A DockerFile for PRoCon on WCS (Windows Container Service).

## Pre-requisites
You'll need to have Windows Container Services enabled on your machine OR to have switched to Windows Containers through Docker's app menu.

## Running it
`docker run --name <your-layer-name> -p <procon-port>:<procon-port>/tcp -v <configs-path>:c:/procon/Configs -v <logs-path>:c:/procon/Logs -v <plugins-path>:c:/procon/Plugins ciavi/procon-wcs:<tag>`
