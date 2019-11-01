require 'pry'
require_relative 'project.rb'
class Backer
    attr_reader :name
    attr_accessor :backed_projects
    def initialize(name)
        @name = name
        @backed_projects = []
        
    end

    def back_project(project)
        project.add_backer(self)
        @backed_projects << project
    end
end