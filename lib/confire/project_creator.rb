class Confire
  class ProjectCreator
    def create(project_name)
      # make dir with that project_name
      Dir.mkdir project_name

      # copy files in
      FileUtils.cp(filename_with_path('lib/confire/templates/config.yml'), project_name)
      FileUtils.cp(filename_with_path('lib/confire/templates/Gemfile'), project_name)
      FileUtils.cp(filename_with_path('lib/confire/templates/Rakefile'), project_name)
      FileUtils.cp(filename_with_path('lib/confire/templates/driver.rb'), project_name)
      FileUtils.cp(filename_with_path('lib/confire/templates/custom_processor.rb'), project_name)
      FileUtils.cp_r(filename_with_path('lib/confire/templates/spec'), project_name)
      FileUtils.cp(filename_with_path('lib/confire/templates/run.sh'), project_name)
      FileUtils.cp(filename_with_path('lib/confire/templates/input_sample.txt'), project_name)

      #copy_and_rename project_name, 'lib/confire/templates/config_sample.yml', 'config_sample.yml', 'config.yml'
      #copy_and_rename project_name, 'lib/confire/templates/processor.rb', 'config_sample.yml', 'config.yml'
    end

    protected
    def filename_with_path(filename)
      File.join(Confire.root, filename)
    end

    def copy_and_rename(project_name, source, oldname, newname)
      FileUtils.cp(source, project_name)
      FileUtils.mv(File.join(project_name, oldname), File.join(project_name, newname))
    end
  end
end
