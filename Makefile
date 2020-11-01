install:
	bundle install

brain-games:
	./bin/brain-games

brain-even:
	./bin/brain-even

brain-prime:
	./bin/brain-prime

lint:
	bundle exec rubocop .
