#!/usr/bin/env groovy

pipeline {
  agent any
  options {
    skipDefaultCheckout true
    ansiColor('xterm')
  }
  stages {
    stage('Build') {
      steps {
        sh 'make project-workspace'
        sh 'make install'
      }
    }
    stage('Test') {
      steps {
        sh 'make start'
        sh 'make curl'
      }
    }
    stage('Deploy') {
      steps {
        sh 'make release'
        sh 'make deploy.ghpages'
      }
    }
  }
}