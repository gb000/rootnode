# rootNode: A full command line infrastructure for your Bitcoin and Lightning Node
## This project runs on Linux and Mac OS.

* To run, you would need to have docker and docker-compose installed in your Linux based system

* If you want, configure the node credentials/misc in the file "config_parameters.sh"

* To start the containers

```bash
./up.sh
```

* To stop the containers
```bash
./down.sh
```
* To attach to container bash
```bash
docker exec -it rootnode bash
```