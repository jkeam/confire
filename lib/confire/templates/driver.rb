require 'confire/main'
require_relative 'custom_processor'

options = {
  custom_processor: CustomProcessor.new
}
Confire::Main.new(options).run
