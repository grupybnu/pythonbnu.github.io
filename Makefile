setup:
	gem install bundler
	bundle install

run:
	bundle exec jekyll serve

deploy:
	bundle install
	bundle exec jekyll build
	cd ./_site && git init
	cd ./_site && git config user.name "Travis CI"
	cd ./_site && git add . && git commit -m "Deploy github-pages"
	cd ./_site && git remote add origin git@github.com:rtancman/rtancman.github.io.git
	cd ./_site && git push origin master -f