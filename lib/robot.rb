require_relative "robot/version"


class Robot_guy
  # Robot variables
  @directions = ["north", "east", "south", "west"]
  @x = 0
  @y = 0
  @facing = @directions[0]
  

  # Robot methods

  # Report the current position and orientation of the robot
  def self.report
    puts @x
    puts @y
    puts @facing
  end

  # Move the robot
  def self.move

  end

  # Turn the robot
  def self.turn(direction)
    if direction == "left"
      @directions.rotate(-1)
    elsif direction == "right"
      @directions.rotate(1)
    end
  end

  # Place the robot
  def self.place(x, y, f)
    @x = x
    @y = y
    @facing = f
  end
end


# Recursive function which asks for user input
def get_input
  puts "Please enter a command:"
  input = gets.chomp.downcase
  if input == "report"
    Robot_guy.report
  elsif input == "move"
    Robot_guy.move
  elsif input == "left" || input == "right"
    Robot_guy.turn(input)
  elsif input == "place"
    puts "Please enter the X coordinate:"
    x = gets.chomp.to_i
    puts "Please enter the Y coordinate:"
    y = gets.chomp.to_i
    puts "Please enter the Facing direction:"
    f = gets.chomp.downcase
    Robot_guy.place(x, y, f)
  else
    puts "Invalid command"
  end
  get_input
end

get_input