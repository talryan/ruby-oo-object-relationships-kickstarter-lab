class ProjectBacker
    @@all = []
attr_accessor :project, :backer
    def initialize(project,backer)
        @project = project
        @backer = backer
        save
    end

    def self.all
        @@all 
    end

    def save
        @@all << self
    end
end