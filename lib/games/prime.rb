require 'prime'
require_relative '../engine'

module PrimeGame
  DESCRIPTION = 'Answer "yes" if given number is prime. Otherwise answer "no".'.freeze

  def self.generate_round_data
    number = rand 1..100

    question = number.to_s
    answer = number.prime? ? 'yes' : 'no'

    [question, answer]
  end

  def self.run
    rounds_data = Array.new(Engine::ROUNDS_COUNT) { generate_round_data }
    Engine.run DESCRIPTION, rounds_data
  end
end
