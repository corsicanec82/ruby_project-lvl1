require_relative '../engine'

module EvenGame
  DESCRIPTION = 'Answer "yes" if the number is even, otherwise answer "no".'.freeze

  def self.generate_round_data
    number = rand 1..100

    question = number.to_s
    answer = number.even? ? 'yes' : 'no'

    [question, answer]
  end

  def self.run
    rounds_data = Array.new(Engine::ROUNDS_COUNT) { generate_round_data }
    Engine.run DESCRIPTION, rounds_data
  end
end
