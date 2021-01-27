class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        arr = []
        ProjectBacker.all.select do |i|
            if i.project == self
                arr << i.backer 
            end
        end
        return arr
    end
end