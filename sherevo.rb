require 'colorize'
require_relative 'config'

class Sherevo
  include Config

  def initialize
    sherevo
  end 

  private 

  def content
    @content ||= File.readlines(absolute_path).shuffle
  end

  def absolute_path
    project_dir + '/' + sherevo_file
  end

  def project_dir
    ENV['HOME'] + '/' + PROJECT_FOLDER 
  end

  def sherevo_file
    SHEREVO_FILE
  end

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