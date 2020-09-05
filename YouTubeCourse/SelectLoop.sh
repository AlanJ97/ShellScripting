#!/bin/bash
#It executes a menu. You must choose a number, not the item

select name in a b c d
do
    case $name in 
    a)
        echo "a selected"
        ;;
    b)
        echo "b selected"
        ;;
    c)
        echo "c selected"
        ;;
    d)
        echo "d selected"
        ;;
    *)
        echo "Error"
    esac
done

# select DRINK in tea cofee water juice appe all none
# do
#    case $DRINK in
#       tea|cofee|water|all) 
#          echo "Go to canteen"
#          ;;
#       juice|appe)
#          echo "Available at home"
#       ;;
#       none) 
#          break 
#       ;;
#       *) echo "ERROR: Invalid selection" 
#       ;;
#    esac
# done