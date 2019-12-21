fmt:
	@shfmt --version
	@find . -maxdepth 3 -name '*.sh' | while read -r src; do shfmt -w -p "$$src"; done
	@find . -maxdepth 3 -name '*.zsh' | while read -r src; do shfmt -w "$$src"; done;

check:
	@shellcheck --version
	@find . -maxdepth 3 -name '*.sh' | while read -r src; do shellcheck -a "$$src"; done

ci: check
	./script/test
