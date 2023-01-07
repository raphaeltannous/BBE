# BBE

Read the Word of God from your terminal.

## Usage

```
usage: BBE [flags] [reference...]

Flags:
  -A num  show num verses of context after matching verses
  -B num  show num verses of context before matching verses
  -C      show matching verses in context of the chapter
  -e      highlighting of chapters and verse numbers
          (default when output is a TTY)
  -p      output to less with chapter grouping, spacing, indentation,
          and line wrapping
          (default when output is a TTY)
  -l      list books
  -h      show help

Reference:
    <Book>
        Individual book
    <Book>:<Chapter>
        Individual chapter of a book
    <Book>:<Chapter>:<Verse>[,<Verse>]...
        Individual verse(s) of a specific chapter of a book
    <Book>:<Chapter>-<Chapter>
        Range of chapters in a book
    <Book>:<Chapter>:<Verse>-<Verse>
        Range of verses in a book chapter
    <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
        Range of chapters and verses in a book

    /<Search>
        All verses that match a pattern
    <Book>/<Search>
        All verses in a book that match a pattern
    <Book>:<Chapter>/<Search>
        All verses in a chapter of a book that match a pattern
```

## Build

BBE can be built by cloning the repository and then running make:

```sh
git clone https://github.com/bontibon/BBE.git
cd BBE
make
```

## License

The [code](https://github.com/layeh/kjv) is under the `Public Domain` License.

The Bible is under:

```txt
Everyone is permitted to copy, modify and distribute copies of this document for free as long as it's Biblical content remains unchanged.
```
