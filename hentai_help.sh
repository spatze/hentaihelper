#!/bin/sh
options=$1
input=$2
case $options in
    
    "search"|"-s")
        if [ $input = "" ]
        then
            firefox -new-tab http://http://hentaihaven.org/search/
        else
            firefox -new-tab http://hentaihaven.org/search/$input
        fi
    ;;

    "category"|"-c")
        if [ $input = ""]
        then  
            firefox -new-tab hentaihaven.org/pick-your-poison
        else
            firefox -new-tab hentaihaven.org/tag/$input
        fi
    ;;

    "help"|"-h")
        cat ~/programms/shell-script/H-files/ABOUT.txt
    ;;

    *)
        firefox -new-tab hentaihaven.org/
    ;;    

esac

