urlcodes:
	@echo "=======> Check URLs for response code"
	@grep -Eiho "https?://[^\"\\'> ]+" *.*      \
		| grep -v fileserver.intranet       \
		| xargs -P10 -I{} curl -o /dev/null \
		 -sw "[%{http_code}] %{url}\n" '{}' \
		| sort -u

podchecker:
	@echo "=======> Check PODs for syntax errors"
	@podchecker *.pod

shellcheck:
	@echo "=======> Check shell scripts for syntax errors"
	@shellcheck -s sh rejmerge.in

.PHONY: urlcodes podchecker shellcheck
