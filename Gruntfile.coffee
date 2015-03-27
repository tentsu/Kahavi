module.exports = (grunt) ->
    grunt.initConfig {
        watch: {
            scripts: {
                files: ['src/coffee/*.coffee'],
                tasks: ['coffee'],
                options: {
                    spawn: false,
                },
            },
            css: {
                files: ['src/css/*.css'],
                tasks: ['sass'],
                options: {
                    spawn: false,
                },
            },
        },
        sass: {
            dist: {                           
                options: {                   
                    style: 'expanded'
                },
                files: {                        
                    'src/css/base.css': 'src/css/base.scss'
                }
            }
        },
        coffee: {
            compile: {
                files: {
                    'src/js/app.js': 'src/coffee/app.coffee',
                    'src/js/Test-controller.js': 'src/coffee/Test-controller.coffee',
                    'src/js/WoW-service.js': 'src/coffee/WoW-service.coffee'
                }
            },
        },
    }    


    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-sass'
    grunt.loadNpmTasks 'grunt-contrib-coffee'

    grunt.registerTask 'default', ['watch', 'sass', 'coffee']
	return

