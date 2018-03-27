require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')
require_relative('./models/improvedgame')

puts ""
puts "Welcome to the Rock, Paper, Scissors Game! For an explanation of the rules, please open the web page:
localhost:4567/welcome"
puts ""

get '/welcome' do
  erb(:welcome)
end

Code below returns the result to the ERB View page,
i.e. does not identify the winning player
get '/:hand1/:hand2' do
  rock_paper_scissors_game = Game.new()
  @winning_hand = rock_paper_scissors_game.outcome(params[:hand1], params[:hand2])
#   #return "And the winner is: #{@winning_hand}" #just prints string rather than results page
  erb(:result)
end

#The code below identifies the winning player as well as the winning hand for the Further
# Extension part
# get '/:hand1/:hand2' do
#   rock_paper_scissors_game = ImprovedGame.new()
#   @winning_player_and_hand_array = rock_paper_scissors_game.outcome(params[:hand1], params[:hand2])
#   @winning_player = @winning_player_and_hand_array[0]
#   @winning_hand = @winning_player_and_hand_array[1]
#   erb(:improved_result)
# end
