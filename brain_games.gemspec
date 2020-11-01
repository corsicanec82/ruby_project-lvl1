Gem::Specification.new do |spec|
  spec.name = 'brain_games'
  spec.version = '0.1.0'
  spec.license = 'MIT'
  spec.summary = 'Brain Games'
  spec.description = 'Simple math console games'
  spec.authors = ['Stanislav Dzisiak']
  # spec.files = ['lib/*', 'bin/*']
  spec.required_ruby_version = '>= 2.7.0'
  spec.executables = %w[
    brain-games
    brain-even
    brain-prime
    brain-gcd
  ]
end
