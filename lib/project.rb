class Project

    attr_reader :title

    @@all = []
    def initialize (title)
        @title = title
    end

    def add_backer(backer)
        @backer = ProjectBacker.new(self, backer)    
    end

    def backers
        project_backers = ProjectBacker.all.select {|project_backer| project_backer.project == self}
        project_backers.map {|backer| backer.backer}
    end

    def self.all
        @@all
    end

end