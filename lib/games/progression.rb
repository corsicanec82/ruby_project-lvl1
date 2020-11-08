require_relative '../engine'

module ProgressionGame
  DESCRIPTION = 'What number is missing in this progression?'.freeze

  PROGRESSION_LENGTH = 10

  def self.generate_round_data
    first = rand 1..10
    step = rand 1..10

    last_index = PROGRESSION_LENGTH - 1
    last_member = first + step * last_index
    progression = (first..last_member).step(step).to_a

    hidden_member_index = rand 0...PROGRESSION_LENGTH

    answer = progression[hidden_member_index].to_s
    progression[hidden_member_index] = '..'
    question = progression.join(' ')

    [question, answer]
  end

  def self.run
    rounds_data = Array.new(Engine::ROUNDS_COUNT) { generate_round_data }
    Engine.run DESCRIPTION, rounds_data
  end
end
