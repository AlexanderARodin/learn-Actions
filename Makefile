help:
	@cat Makefile

gh.pages:
	@git subtree push --prefix dist origin gh-pages



pull:
	@git pull

savetogit: git.pushall
git.pushall: git.commitall
	@git push
git.commitall: git.addall
	@if [ -n "$(shell git status -s)" ] ; then git commit -m 'saving'; else echo '--- nothing to commit'; fi
git.addall:
	@git add .

clean:
	@echo 'nothing to clean (yet)'
