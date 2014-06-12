
class MarsRover
  def self.start
    puts "Type 'Y to move. Type quit to leave." 
    start_answer = gets.chomp.upcase

    if start_answer == "Y"
      @x_coordinate = 0
      @y_coordinate = 0
      self.move
    end
  end

  #the move method asks what direction and how far the user wants to go.
  def self.move
    puts "What direction do you want to go? (N, E, S, W) "
    @direction = gets.chomp.upcase

    puts "How far do you want to go?"
    @distance_number = gets.chomp.to_i

    if @direction == "N"
      @y_coordinate = @y_coordinate + @distance_number
    end

    if @direction == "E"
      @x_coordinate = @x_coordinate + @distance_number
    end

    if @direction == "S"
      @y_coordinate = @y_coordinate - @distance_number
    end

    if @direction == "W"
      @x_coordinate = @x_coordinate - @distance_number
    end

    puts "Your current location is #{@x_coordinate}, #{@y_coordinate}. You are facing #{@direction}."
    puts "type 'M' to keep moving. type 'R' to reset the rover."
    @second_answer = gets.chomp.upcase

    if @second_answer == "M"
      move
    end

    if @second_answer == "R"
    #call the start method again so the user can keep moving (or quit)
    self.start
    end
  end
end


 # Intro
puts "Hello! I'm the Mars Rover. Type 'S' to get started. Type 'I' for more information about the program. Type 'quit' to leave."
intro_answer = gets.chomp.upcase

if intro_answer == "I"
puts "The plain, i.e. the space you're moving on, is infinite. You are moving in a straight line. If you want move NW you must first move north and then west. You start at 0,0, the center of the plain. When moving south or west from the center you're coordinates will be represented as negative numbers. For example if you move 4N, 4E, 10S, and then 10W your final coordinates will be -6, -6 (west facing)."
end

if intro_answer == "S"
  puts "Your current coordinates are 0,0" 
  #call start method so the user can move
  MarsRover.start
end  