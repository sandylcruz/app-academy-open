class CommandLineInterface

  def initialize
  end

  def run
    file_name = gets.chomp
    puts File.readlines(file_name)
    puts "hi"
  end
  #solve with dijkstra's algorithm
  #parse maze file from string into a graph of nodes

  #create maze graph class (Maze_graph.new())
  #Transform maze graph file into a graph
  #Create maze graph node class (graph needs entry point aka root (maze graph node))
    #have methods to fix other nodes to it 
    #build representation through data of map 
    #maze graph class has method called "print a star solution"
    #make instance of maze grpah class; when initialization occurs (S for start, e for end will be special nodes)
    #start_node = maze graph node instance that cooresponds with S
    #end_node instance cooresponds with end
    #maze graph class needs "print a star path" which will 1) find a-star path from ST, print path
    #
end
cli = CommandLineInterface.new
cli.run