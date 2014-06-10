module.exports = function(grunt) {

    var paths = {
        sandbox: {
            host: 'degsalpha02.degdarwin.com',
            base: '/_APPLICATION/SANDBOX.alpha/WebRoot',
            folder: 'DigitalDirect/UMB/Scout'
        }
    };

    require('load-grunt-config')(grunt, { 
        config: { 
            paths: paths,
            mailconfig: grunt.file.readJSON('.mailconfig')
        }
    });

};


