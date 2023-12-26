require 'colorize'
require_relative 'config'
require_relative 'phrases'

class Sherevo
  include Config
  include Phrases

  def initialize
    sherevo
  end 

  private 

  def sherevo_of_the_day
    "\n\>\> #{content.sample}\n"
  end

  def random_color
    String.colors.sample
  end

  def sherevo
    puts sherevo_of_the_day.colorize(color: random_color, mode: :bold)
  end
end 