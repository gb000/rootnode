#!/bin/bash


if [ -e ../verifications/is_arch_set ]
then
    architeture=$(cat ../verifications/is_arch_set)
    echo "Architeture already set ($architeture)"
else
    echo -e "Please set the architeture, 1 for ARM64 and 2 for AMD64\n\nArchiteture: "
    read architeture

    case $architeture in
        "1")    
        
            touch ../verifications/is_arch_set && echo "ARM64" > ../verifications/is_arch_set
    	    echo "Architeture setted successfully! (ARM64) "

        
        ;;
        "2")
        
            touch ../verifications/is_arch_set && echo "AMD64" > ../verifications/is_arch_set
    	    echo "Architeture setted successfully! (AMD64) "
            
        
        ;;
        *)
        
            echo "Architeture not found"
        
        ;;
    esac
fi