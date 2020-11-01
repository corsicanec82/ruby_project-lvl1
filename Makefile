install:
	bundle install

brain-games:
	./bin/brain-games

brain-even:
	./bin/brain-even

brain-prime:
	./bin/brain-prime

brain-gcd:
	./bin/brain-gcd

lint:
	bundle exec rubocop .
