
dependencies = $(wildcard *.Rmd)

docs/index.html: $(dependencies)
	Rscript knit.R

watch:
	while true; do inotifywait --event modify $(dependencies); $(MAKE); done

clean:
	rm -rf docs/*

reset: clean

rebuild: clean all


.PHONY: all clean reset rebuild
