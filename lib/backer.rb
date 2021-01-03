class Backer
    attr_accessor :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer_instances = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end

        project_backer_instances.map do |instances|
            instances.project
        end
    end



end