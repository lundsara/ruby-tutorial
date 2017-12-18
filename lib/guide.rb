require 'restaurant'
class Guide

  def initialize(path=nil)
    #locate the rest txt file at path
    Restaurant.filepath = path
    if Restaurant.file_usable?
      puts "Found restaurant file."
    #or create a new file
  elsif Restaurant.create_file
    puts "Created restaurant file."
    #exit if create fails
  else
    puts "Exiting.\n\n"
    exit!
  end
end

  def launch!
    introduction
    #intro
    #action loop
    result = nil
    until result == :quit
    #what do you want to do?
      print "> "
      user_response = gets.chomp
    # do action
      result = do_action(user_response)
    #repeat until user quits
    # conclusion
    end
   conclusion
  end

  def do_action(action)
    case action
    when 'list'
      puts "Listing"
    when 'find'
      puts "finding"
    when 'add'
      puts "adding"
    when 'quit'
      return :quit
    else
      puts "\nI don't understand that command. \n"
    end
  end

  def introduction
    puts "\n<<< Welcome to the Food Finder! >>>\n\n\n"
    puts "This is an interactive guide to help you find the food you crave.\n\n"
  end
  def conclusion
    puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
  end

end
