require_relative '../engine'

module GcdGame
  DESCRIPTION = 'Find the greatest common divisor of given numbers.'.freeze

  def self.generate_round_data
    number1 = rand 1..30
    number2 = rand 1..30

    question = "#{number1} #{number2}"
    answer = number1.gcd(number2).to_s

    [question, answer]
  end

  def self.run
    rounds_data = Array.new(Engine::ROUNDS_COUNT) { generate_round_data }
    Engine.run DESCRIPTION, rounds_data
  end
end
