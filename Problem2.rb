class Game
  def initialize
    @rooms = {1 => 5, 2 => 10, 3 => 15}
    @score = 0
  end

  def start
    puts "Welcome to the Adventure Game!"
    puts "You have #{@score} points."
    while true
      puts "Choose a room (1-3) to enter or 'exit' to end the game:"
      input = gets.chomp
      break if input == 'exit'
      room = input.to_i
      if @rooms.key?(room)
        @score += @rooms[room]
        puts "You entered Room #{room} and earned #{@rooms[room]} points."
      else
        puts "Invalid room number. Please try again."
      end
    end
    puts "Game over! You collected a total of #{@score} points."
  end
end

game = Game.new
game.start
