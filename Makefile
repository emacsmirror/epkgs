help:
	$(info make assume-unchanged    - start assuming all modules are unchanged)
	$(info make no-assume-unchanged - stop assuming all modules are unchanged)
	$(info make gc                  - run git gc in each module)
	@echo

assume-unchanged:
	git ls-files -z attic mirror | xargs -0 git update-index --assume-unchanged

no-assume-unchanged:
	git ls-files -z attic mirror | xargs -0 git update-index --no-assume-unchanged

gc:
	git submodule foreach 'git gc --aggressive --cruft'
