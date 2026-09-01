all: pdf epub

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
