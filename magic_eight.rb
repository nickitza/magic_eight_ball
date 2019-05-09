require 'colorize'
require 'pry'

class Magic_Ball_App
  attr_accessor :responses
  def initialize
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
    @user_responses = @responses.clone
    magic_app
  end

  def get_menu_choice
    puts "1) Ask a question."
    puts "2) Exit"
    gets.strip
  end

  def ask_question
    puts "Ask the spirits within the ball a yes or no question: "
    gets.strip()
    stars
    puts `clear`
    puts "The spirits are being conjured..."
    sleep(1)
    puts "..."
    sleep(2)
    give_response
  end

  def stars
    puts "********".colorize(:yellow) * 4
  end

  def add_answers
    puts "What answer would you like to add?"
    user_add = gets.strip
    @user_responses << user_add
  end

  def print_answers
    @user_responses.each do |r|
    puts r
    end
  end

  def reset_answers
    @user_responses = @responses.clone
  end

  def magic_app  
    still_running = true
    while still_running
      stars
      puts "Welcome to the Magic Eight Ball".colorize(:color => :black, :background => :white)
      stars 
      user_choice = get_menu_choice 
      case user_choice
        when "1"
          ask_question
        when "2"
          puts "The spirits say you'll return soon."
          puts "Goodbye for now."
          puts "bWaH hA Ha hA hAhA!"
          still_running = false
          exit
        when "add_answers"
          add_answers
        when "print_answers"
          print_answers
        when "reset_answers"
          reset_answers
        else
          puts "That is not a valid selection.".colorize(:red)
          puts "Please choose either 1 or 2."
      end
    end
  end
  
  def give_response
    puts @responses.sample
    magic_app
  end
end

Magic_Ball_App.new
binding.pry