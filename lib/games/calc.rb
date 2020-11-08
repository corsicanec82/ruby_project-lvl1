require_relative '../engine'

module CalcGame
  DESCRIPTION = 'What is the result of the expression?'.freeze

  OPERATORS = %w[+ - *].freeze

  def self.calculate(operator, number1, number2)
    case operator
    when '+'
      number1 + number2
    when '-'
      number1 - number2
    when '*'
      number1 * number2
    else
      raise "Unknown operator: #{operator}"
    end
  end

  def self.generate_round_data
    number1 = rand 1..20
    number2 = rand 1..20
    operator = OPERATORS.sample

    question = "#{number1} #{operator} #{number2}"
    answer = calculate(operator, number1, number2).to_s

    [question, answer]
  end

  def self.run
    rounds_data = Array.new(Engine::ROUNDS_COUNT) { generate_round_data }
    Engine.run DESCRIPTION, rounds_data
  end
end
