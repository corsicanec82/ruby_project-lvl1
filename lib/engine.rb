module Engine
  ROUNDS_COUNT = 3

  def self.run(description, rounds_data)
    puts 'Welcome to the Brain Games!'
    print 'May I have your name? '
    name = gets.chomp
    puts "Hello, #{name}!"

    puts description

    rounds_data.each do |question, answer|
      puts "Question: #{question}"
      print 'Your answer: '
      actual = gets.chomp
      if actual != answer
        puts "'#{actual}' is wrong answer ;(. Correct answer was '#{answer}'"
        puts "Let's try again, #{name}!"
        exit
      end
      puts 'Correct!'
    end

    puts "Congratulations, #{name}"
  end
end
