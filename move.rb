
# Intro
puts "Hello! I'm the Mars Rover. Type 'M' to move. Type 'I' for more information about the program. Type 'quit' to leave."
intro_answer = gets.chomp.upcase

if intro_answer == "I"
puts "The plain, i.e. the space you're moving on, is infinite. You are moving in a straight line. If you want move NW you must first move north and then west. You start at 0,0, the center of the plain. When moving south or west from the center you're coordinates will be represented as negative numbers. For example if you move 4N, 4E, 10S, and then 10W your final coordinates will be -6, -6 (west facing)."
end

if intro_answer == "M"
  @x_coordinate = 0
  @y_coordinate = 0
  puts "Your current coordinates are #{@x_coordinate}, #{@y_coordinate}. " 



  #this method resets the rover to 0,0.
  def reset 
    @x_coordinate = 0
    @y_coordinate = 0
    puts "Your current coordinates are #{@x_coordinate}, #{@y_coordinate}. " 

    start
  end


  #the move method takes the answers from the move_assessment method and makes the user move.
  def move
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

    #call the start method again so the user can keep moving (or quit)
    start
  end


  #the move_assessment method asks what direction and how far the user wants to go.
  def move_assessment 
    puts "What direction do you want to go? (N, E, S, W) "
    @direction = gets.chomp.upcase

    puts "How far do you want to go?"
    @distance_number = gets.chomp.to_i

    move
  end


  #the start method asks the user if they want to move. if yes it calls the move_assessment method to figure out where and how far to move. If no it quits. 
  def start
    puts "Type 'Y to move. Type 'R' to reset the rover. Type quit to leave." 
    start_answer = gets.chomp.upcase

    if start_answer == "Y"
      move_assessment 
    end

    if start_answer == "R"
      reset
    end
  end

  #call start method so the user can move
  start

end #end of moving if statement
 