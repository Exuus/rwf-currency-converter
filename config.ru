require 'bundler'
Bundler.require

Envyable.load('./config/env.yml')

require './application'

run Application
