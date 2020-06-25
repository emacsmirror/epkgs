help:
	$(info make assume-unchanged    - start assuming all modules are unchanged)
	$(info make no-assume-unchanged - stop assuming all modules are unchanged)
	@echo

assume-unchanged:
	git ls-files -z attic mirror | xargs -0 git update-index --assume-unchanged

no-assume-unchanged:
	git ls-files -z attic mirror | xargs -0 git update-index --no-assume-unchanged
