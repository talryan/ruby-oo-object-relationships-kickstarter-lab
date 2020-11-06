class Backer  
    attr_reader :name
    # @@all = []
    def initialize(name)
        @name = name 
        @@all = []
        # @@all << self
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end


    def backed_projects
        project_backers = ProjectBacker.all.select do |proback|
          proback.backer == self
        end
        project_backers.map do |proback|
          proback.project
        end
    end
end