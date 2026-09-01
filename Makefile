all: spellcheck pdf epub

spellcheck:
	@errors=$$(hunspell -d en_US -p project_words.txt -l book/*.adoc ) ; \
	if [ -n "$$errors" ]; then \
		echo "$$errors" ; \
		exit 1 ; \
	fi


pdf:
	asciidoctor-pdf -D output hackfest-guide.adoc

epub:
	mkdir -p output
	asciidoctor -D build hackfest-guide.adoc
	pandoc -f docbook -i build/hackfest-guide.xml \
		--epub-cover-image=images/cover.png \
		--epub-title-page=false \
		--metadata title="Maintainer's Guide to Hackfests" \
		--metadata author="Ben Cotton" \
	       	-o output/hackfest-guide.epub

clean:
	rm -rf build/ output/
