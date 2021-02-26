class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        @project = ProjectBacker.new(project, self)    
    end

    def backed_projects
        projects = ProjectBacker.all.select {|project| project.backer == self}
        projects.map {|project| project.project}
    end


        # projects = []
        # ProjectBacker.all.each do |project|
        #     if project.backer == self
        #         projects << project
        #     end
        # end


end