#!/bin/bash
# This file run project start file , then launch all service.
# You should write your project start logs in project_start.sh.
#
# Author: Mephis Pheies <mephistommm@gmail.com>
# Begin ---

bash -c ./funs_start.sh
# start supervisor service
service supervisor start > /dev/null 2>&1
# start nginx at foreground
nginx -g 'daemon off;'

# End ---
