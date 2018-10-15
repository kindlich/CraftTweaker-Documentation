#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage('Clean') {
            steps {
            	echo 'Removing previously generated outputs'
                rm build -d -r
            }
        }
        stage('Setup') {
            steps {
                echo 'Setting up pip dependencies'
                //pip install mkdocs==0.16.3
            }
        }
        stage('Build') {
            steps {
                echo 'Building wiki files'
				sh './build.sh'
            }
        }
        stage('Test') {
        	steps {
        		echo 'Testing...'
        	    }
            }
        }
    post {
        always {
            echo 'Success, now moving to web server'
        }
    }
}