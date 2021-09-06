#!/bin/bash
containers/rootnode/volume/scripts/animation.sh


if [ -e containers/rootnode/volume/verifications/is_arch_set ]
then
    architeture=$(cat containers/rootnode/volume/verifications/is_arch_set)
    echo "Architeture already set ($architeture)"
    sleep 1

    docker network create -d bridge rootnode
    docker-compose up --build &

else
    echo -e "Please set the architeture, 1 for ARM64 and 2 for AMD64\n\nArchiteture: "
    read architeture

    case $architeture in
        "1")    
        
            touch containers/rootnode/volume/verifications/is_arch_set && echo "ARM64" > containers/rootnode/volume/verifications/is_arch_set
    	    echo "Architeture setted successfully! (ARM64) "

            docker network create -d bridge rootnode
            docker-compose up --build &
        
        ;;
        "2")
        
            touch containers/rootnode/volume/verifications/is_arch_set && echo "AMD64" > containers/rootnode/volume/verifications/is_arch_set
    	    echo "Architeture setted successfully! (AMD64) "
            
            docker network create -d bridge rootnode
            docker-compose up --build &
        
        ;;
        *)
        
            echo "Architeture not found, please try again."
        
        ;;
    esac
fi