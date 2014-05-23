require 'launchy'

# Intro
puts "Do you want to build a snowman? Or do you want to move around? Type 's' for snowman or 'm' for moving please."
frozen_answer = gets.chomp.upcase

if frozen_answer == "S"
  Launchy.open("https://www.youtube.com/watch?v=obdR4VhkMew")
end #end of snowman statement

if frozen_answer == "M"
  @x_coordinate = 0
  @y_coordinate = 0
  puts "Your current coordinates are #{@x_coordinate}, #{@y_coordinate}" 


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
    puts "Your current location is #{@x_coordinate}, #{@y_coordinate} (#{@direction})."

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
    puts "Do you want to move? (Y or N)"
    again_answer = gets.chomp.upcase

    if again_answer == "Y"
      move_assessment 
    end

    if again_answer == "N"
      Launchy.open("https://github.com/owlbytes")
      Launchy.open("https://www.youtube.com/watch?v=WchnQOa2oO8")
    end
  end

  #call start method so the user can move
  start

end #end of moving if statement
 