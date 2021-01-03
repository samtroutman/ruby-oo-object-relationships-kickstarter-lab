class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer_instances = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end

        project_backer_instances.map do |instances|
            instances.backer
        end
    end

        
end