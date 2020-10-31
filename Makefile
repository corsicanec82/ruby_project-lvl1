install:
	bundle install

brain-games:
	./bin/brain-games

lint:
	bundle exec rubocop .
