require "unicode/name"

REFERENCE_URL = "Official Apple Documentation](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/LexicalStructure.html)"

IDENTIFIER_HEAD = [
    *"a".."z", *"A".."Z", "_",
    *"\u00A8", "\u00AA", "\u00AD", "\u00AF", *"\u00B2".."\u00B5",
    *"\u00B7".."\u00BA",
    *"\u00BC".."\u00BE", *"\u00C0".."\u00D6", *"\u00D8".."\u00F6",
    *"\u00F8".."\u00FF",
    *"\u0100".."\u02FF", *"\u0370".."\u167F", *"\u1681".."\u180D",
    *"\u180F".."\u1DBF",
    *"\u1E00".."\u1FFF",
    *"\u200B".."\u200D", *"\u202A".."\u202E", *"\u203F".."\u2040",
    "\u2054", *"\u2060".."\u206F",
    *"\u2070".."\u20CF", *"\u2100".."\u218F", *"\u2460".."\u24FF",
    *"\u2776".."\u2793",
    *"\u2C00".."\u2DFF", *"\u2E80".."\u2FFF",
    *"\u3004".."\u3007", *"\u3021".."\u302F", *"\u3031".."\u303F",
    *"\u3040".."\uD7FF",
    *"\uF900".."\uFD3D", *"\uFD40".."\uFDCF", *"\uFDF0".."\uFE1F",
    *"\uFE30".."\uFE44",
    *"\uFE47".."\uFFFD",
]

IDENTIFIER = [
    *"\u0300".."\u036F", *"\u1DC0".."\u1DFF", *"\u20D0".."\u20FF",
    *"\uFE20".."\uFE2F",
]

OPERATOR_HEAD = [
    *%w(/ = - + ! * % < > & | ^ ~ ?),
    *"\u00A1".."\u00A7",
    *"\u00A9".."\u00AB",
    *"\u00AC".."\u00AE",
    "\u00B0", "\u00B1", "\u00B6", "\u00BB", "\u00BF", "\u00D7", "\u00F7",
    "\u0016", "\u0017",
    *"\u2020".."\u2027",
    *"\u2030".."\u203E",
    *"\u2041".."\u2053",
    *"\u2055".."\u205E",
    *"\u2190".."\u23FF",
    *"\u2500".."\u2775",
    *"\u2794".."\u2BFF",
    *"\u3001".."\u3003",
    *"\u3008".."\u3030"
]

OPERATOR = [
    *"\u0300".."\u036F",
    *"\u20D0".."\u20FF",
    *"\uFE00".."\uFE0F",
    *"\uFE20".."\uFE2F",
    *"\uE0100".."\uE01EF"
]

FONTS = [
    %w(Menlo monospace),
    ['SF Mono Regular', 'monospace'],
    %w(Inconsolata monospace),
    %w(Symbola serif)
]

def code(c)
    c.unpack("U").map {|x| "%04X" % x }.join(",")
end

def name(c)
    Unicode::Name.of(c)
end

def render(partial, locals={})
    Haml::Engine::new(File.read("#{partial}.haml")).render(Object.new, locals)
end
