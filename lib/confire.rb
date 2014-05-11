require_relative 'confire/project_creator'
class Confire
  def initialize(project_name)
    project_creator = ProjectCreator.new
    project_creator.create project_name
  end
  def self.root
    File.dirname __dir__
  end
end
