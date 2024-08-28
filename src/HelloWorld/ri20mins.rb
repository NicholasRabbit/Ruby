#!/usr/bing/env ruby

class MegeGreeter
  attr_accessor :names

  def initialize(name = "World")
    @names = names
  end

  # The "say_hi" method.
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # say_bye
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Goodbye #{@names.join(", ")}. I will be back!"
    else
      puts "Goodbye #{@names}. I will be back!"
    end
  end

end  # end of this class??


  if __FILE__ == $0
    mg = MegeGreeter.new
    mg.say_hi
    mg.say_bye

    # Change the names to "Zoe"
    mg.names = "Zoe"
    mg.say_hi
    mg.say_bye


    mg.names = ["Tom", "Jerry", "Charles"]

    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye

  end
