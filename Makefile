
#***************************************************************************
# Why use this Makefile?
# Because you get help, a list of CMDs and auto-complete (TAB)
#
# Add your own cmd line tools
# Especially the ones you have to look up every time you use them
#***************************************************************************


#************************************************************
# this is the default command when none is specified
#************************************************************
help: ## Show this help. First CMD as it is then the default
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


#***************************************************************************
#*** Add your commmands below here *****************************************
#***************************************************************************

create:
    mkdir lib
    mkdir lib/commands
    mkdir lib/modules
    mkdir lib/scaffolding
    mkdir test
    mkdir test/lib
    mkdir test/lib/commands
    mkdir test/lib/modules
    touch index.js
    npm init -y  # This will create a package.json file

dependencies:
    npm install --save yargs
    npm install --save shelljs require-dir camelcase chalk

link: ## do this after adding bin spec to package.json
    npm link




