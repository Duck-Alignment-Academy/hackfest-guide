# Maintainer's Guide to Hackfests

This gude is intended to help open source maintainers participate in events like Hacktoberfest.
It covers what to do before, during, and after the event —
with a heavy emphasis on pre-event planning —
to make your work as easy as possible.

## Contributing

Human contributions welcome!
This is a project by people for people.
The use of generative AI models to generate content is prohibited.

The scope of this guide is intentionally kept small so that it's easy for maintainers to use.
For book-length reads, I have [a few suggestions](https://duckalignment.academy/resources/).
At this time, I am not looking for translations because I don't have the language skill to review them.
If you are interested in translating this work on your own, you are welcome to do that under the terms of this license.
Let me know and I'll add links.

For substantive changes, please do not open a pull request without first opening an issue to discuss with the maintainers.
You may submit pull requests for to correct spelling, typographic, syntax, and other similar errors without first opening an issue.

All commits must contain a [DCO signoff](https://developercertificate.org/).

Questions?
Let's talk in the [discussions tab](https://github.com/Duck-Alignment-Academy/hackfest-guide/discussions).

### Style

Markdown files are formatted one-sentence-per-line.
You may insert line breaks after colons and semicolons.

### Building

I include a [`Makefile`](Makefile) to make it easy to do local builds.
Use `make pdf` to build the PDF version, `make epub` to build the epub version, and `make clean` to remove the built files.
`make spellcheck` will run a spelling check.
If the spellchecker flags words that it shouldn't, add them to `project_words.txt`.
Output ends up in the `output/` directory.

Building the project requires:

* asciidoctor
* asciidoctor-pdf
* pandoc

Running the spellchecker requires hunspell.

## Code of Conduct

Participation in this project is an agreement to abide by the Contributor Covenant version 3.0 found in [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) in this repo.

## Governance

Ben Cotton runs this show.
There are currently no other maintainers.

## License

This project is licensed under the [Creative Commons Attribution-ShareAlike (CC BY-SA) 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) license.
See [LICENSE](LICENSE) in this repository for the full license text.
If you do not specify a license on your contribution, it defaults to the project license.
