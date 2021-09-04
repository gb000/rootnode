# rootNode: A full command line infrastructure for your Bitcoin and Lightning Node
## This project runs only on ARM64 processors.

* To run this project, you will need to have docker and docker-compose installed in your Linux based system

* If you want, configure the node credentials/misc in the file "config_parameters.sh"

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