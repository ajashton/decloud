DATE := $(shell date --utc)

all: index.html

.PHONY: all

index.html: decloud.md style.css template.html
	pandoc \
	    --template=template.html \
	    --toc \
	    --smart \
	    --variable=date:'$(DATE)' \
	    --css=style.css \
	    --from=markdown decloud.md \
	    --to=html5 > $@
