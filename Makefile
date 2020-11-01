install:
	bundle install

brain-games:
	./bin/brain-games

brain-even:
	./bin/brain-even

lint:
	bundle exec rubocop .
