require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects #returns all the projects associated with this Backer instance
        arr = []
        ProjectBacker.all.select do |i|
            if i.backer == self
                arr << i.project
            end
        end
        return arr
    end
end

# [1] pry(#<Backer>)> ProjectBacker.all
# => [#<ProjectBacker:0x000055dbe7113a50
#   @backerinstance=#<Backer:0x000055dbe7113a78 @name="Meryl">,
#   @projectinstance=#<Project:0x000055dbe7113af0 @title="Karaoke">>,

# def songs
#     Song.all.select do |song|
#         song.artist == self
#     end
# end