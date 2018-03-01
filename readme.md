# Display unicode characters allowed by in Swift language

This project consists of a ruby script, HAML templates and a bit of javascript, so as to produce a web page displaying the unicode characters allowed in the Swift programming language to denote identifiers and operators. The characters are diplayed in a grid; hovering over a character displays a tooltip showing the unicde hexadecimal code and name of that character. There is also a menu the font out of a handful of hardwired choices. This relies on local fonts but the CSS substitute monsopace, serif or sans-serif as appropriate.

To build the HTML file `swift-characters.html`, use

```
bundler exec haml -I. -rswiftchar.rb swift-characters.haml > swift-characters.html
```
