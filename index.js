#!/usr/bin/env node

var fs = require('fs');
var yargs = require('yargs');

const argv = yargs.command({
        command: '* <file>',
        aliases: ['build'],
        desc: 'Set a config variable',
        builder: function(yargs){
            yargs.option('debug', {
                alias: 'd',
                describe: 'Show the created array before flattening, warning NON-USABLE OUTPUT.'
            })
        },
        handler: handler
    })
    .help()
    .argv;



function handler(argv){
    console.log("it is running");
    console.log(argv);
    !!argv.debug && console.log("debugging");

    process(argv.file);

}


function process(filePath){

    var linesArray = loadFileAsArray(filePath);
    console.log(linesArray);
    console.log("######################");

    for(i in linesArray) {
        console.log(linesArray[i]);
    }

    // now flatten it

}


function loadFileAsArray(filePath){
    var array = fs.readFileSync(filePath).toString().split("\n");
    return array;
}

