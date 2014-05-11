require 'confire/main'
require_relative 'custom_parser'

options = {
  custom_parser: CustomParser.new
}
Confire::Main.new(options).run
