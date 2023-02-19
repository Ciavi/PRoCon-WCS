# PRoCon-WCS
A DockerFile for PRoCon on WCS (Windows Container Service).

## Availability
| .NET Framework | Windows | Available (on Docker Hub) |
| --- | --- | --- |
| 4.8.1 | Windows Server Core LTSC 2022 | ✅ `ciavi/procon-wcs:4.8.1-ltsc2022` | ✅ |
| 4.8 | Windows Server Core LTSC 2022<br />Windows Server Core LTSC 2019<br />Windows Server Core LTSC 2016 | ✅ `ciavi/procon-wcs:4.8-ltsc2022`<br />✅ `ciavi/procon-wcs:4.8-ltsc2019`<br/>❌ |

## Pre-requisites
You'll need to have Windows Container Services enabled on your machine OR to have switched to Windows Containers through Docker's app menu.

## Running it
`docker run --name <your-layer-name> -p <procon-port>:<procon-port>/tcp -v <configs-path>:c:/procon/Configs -v <logs-path>:c:/procon/Logs -v <plugins-path>:c:/procon/Plugins ciavi/procon-wcs:<tag>`
