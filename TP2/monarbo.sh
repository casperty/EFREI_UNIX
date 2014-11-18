#!/bin/bash

# on aurait pu utiliser £HOME
# mais ici ce qui est pratique c'est qu'on peut modifier path_user
path_user=$HOME
mkdir -p $path_user/Unix/TP2/arbo/{src,obj}/app1
mkdir -p $path_user/Unix/TP2/arbo/{obj,bin}/tmp
mkdir -p $path_user/Unix/TP2/arbo/src/old
touch $path_user/Unix/TP2/arbo/src/app1/{a.c,b.c,c.c}
touch $path_user/Unix/TP2/arbo/obj/app1/{a.o,b.o,c.o}
touch $path_user/Unix/TP2/arbo/bin/app1

