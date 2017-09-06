#!/bin/bash

vagrant up default
vagrant ssh default -c compile.sh
vagrant halt default
