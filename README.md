# RootNode: A full command line infrastructure for your Bitcoin and Lightning Node
## This project runs on Linux and Mac OS.

## You can test this project, but for now, is not recommended run in a production ambient
#
## Services Included in the Project

* Bitcoin Core
* Electrum Personal Server (Hidden Service remote connection available by default)
* C-lightning (Hidden Service income connections available by default)
* Spark Wallet (Hidden Service remote connection available by default)
* Ride The Lightning (Hidden Service remote connection available by default)
#
## Services Working Now

* Bitcoin Core
* Electrum Personal Server (Hidden Service remote connection available by default)
#
## Getting Started

* To run, you would need to have docker and docker-compose installed on your system

* You can configure the services credentials, wallet public keys and more in the file "config_parameters.sh"
#
* Start the containers

```bash
./up.sh
```

* Stop the containers
```bash
./down.sh
```
* Attach to container bash
```bash
docker exec -it rootnode bash
```
#
# Thank you for testing this project!