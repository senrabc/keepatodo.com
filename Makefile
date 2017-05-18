###############################################################################
# Makefile
# Purpose: Automate deployment of KeepATODO.com files to web server
# Author: senrabc@gmail.com
# Version: 0.0.1
###############################################################################
#  _  __                    _______ ____  _____   ____                           
# | |/ /                 /\|__   __/ __ \|  __ \ / __ \                          
# | ' / ___  ___ _ __   /  \  | | | |  | | |  | | |  | | ___ ___  _ __ ___       
# |  < / _ \/ _ \ '_ \ / /\ \ | | | |  | | |  | | |  | |/ __/ _ \| '_ ` _ \      
# | . \  __/  __/ |_) / ____ \| | | |__| | |__| | |__| | (__ (_) | | | | | |     
# |_|\_\___|\___| .__/_/    \_\_|  \____/|_____/ \____(_)___\___/|_| |_| |_|     
#               | |                                                              
#               |_|                                                              
#
###############################################################################

#Constants and Variables:

#examples:
MAKE_CONFIG_FILE := Makefile.ini                                                   
CONFIG_FOLDER        := $(shell cat ${MAKE_CONFIG_FILE} | sed -e 's/ //g' | grep -v '^\#' | grep 'config_folder=' | cut -d '=' -f2)
CONFIG_FILE := $(CONFIG_FOLDER)/settings.ini 

EXAMPLE_VAR = "This is an Example that is awesome"




help:                                                                     
	@echo "\n Available tasks:"                                            	
	@echo "\t clean - get rid of any stuff that needs cleaning"
	@echo "\t example_function_name - this is an example of a line break \
               for wrapped part of the line not to exceed 80 char"
	@echo "\t ex_shrt_func_name - this is a short function"
                                                                                 
                                                                                 
                                                                                 
                                                                                 
clean:                                                                          
	# get rid of any old csv output files
	-rm -rf preproc/*_output.csv
	-rm -rf *_output.csv                                                    
	-rm -rf 'preproc/scenario100/raw.csv'                                   

example_function_name:                                                             
	
	@echo $(EXAMPLE_VAR)                       

ex_shrt_func_name:                                                                  

	@echo $(EXAMPLE_VAR)                              
                                                                                 
 
