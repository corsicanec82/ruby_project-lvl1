module Cli
  def self.greet
    puts 'Welcome to the Brain Games!'
    print 'May I have your name? '
    name = gets.chomp
    puts "Hello, #{name}!"
  end
end
