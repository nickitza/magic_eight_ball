require 'colorize'
require 'pry'

class Magic_Ball_App
  attr_accessor

  def initialize
    magic_app
  end

  def get_menu_choice
    puts
    puts "***Welcome to the Magic Eight Ball***"
    puts "1) Ask a question."
    puts "2) Exit"
    gets.to_i
  end

  def ask_question
    puts "Ask the spirits within the ball a yes or no question: "
    gets.strip()
    puts "The spirits are being conjured..."
    sleep(2)
    puts "..."
    sleep(2)
    give_response

  def magic_app  
    still_running = true
    while still_running 
      user_choice = get_menu_choice 
      case user_choice
      when 1
        ask_question
      when 2
        puts "The spirits say you'll return soon."
        puts "Goodbye for now."
        puts "Bwah ha ha ha haaa!"
        exit
      else
        puts "That is not a valid selection."
        puts "Please choose either 1 or 2."
      end
    end
  end

  
  def give_response
    @responses = [
      "The spirits say absolutely not.",
      "The spirits say absolutely.",
      "The path is hazy; try again later.",
      "The path is shrouded in darkness; don't pursue.",
      "The path is clear to travel; pursue freely.",
      "Concentrate deeply and ask again.",
      "The spirits are unsure.",
      "Most definitely.",
      "Outlook not so good.",
      "The fae say it's tricky, but yes.",
      "The fae say it's tricky, but no.",
      "You really don't want to know.",
      "It's everything you've dreamed of.",
      "You should ask your cat.",
      "You already know the answer.",
      "The runes say it's possible.",
      "The scrying ball says it's likely.",
      "The Ouija board spells Not Really.",
      "Ask the ghost sitting next to you. It knows.",
      "You will dream the answer tonight.",
      "The demon next to you is nodding.",
      "The spirits are silent on the matter."
    ]
    puts responses.sample
    magic_app
  end
end


Magic_Ball_App.new