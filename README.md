DESCRIPTION
-----------

Zalgo text is digital text that has been modified with combining characters (Unicode symbols that are generally used to stack diacritics above and below letters) to appear creepy or glitchy.
see: https://en.wikipedia.org/wiki/Zalgo_text

INSTALLATION
------------

```
# gem install zalgor
```

USAGE
-----

Simple transformation:

```ruby
require 'zalgor'

# transform a string
str = 'Hello World'
puts Zalgor.transform str
```

Simple purification:

```ruby
require 'zalgor'

# purify a string

str = 'Hello World'
str = Zalgor.transform(str)
puts str
# exemple : H̵͉̣̀̀̊è̖̻͒̎͘ļ̵̙̥̐̽l̸̡̖̠̿ͫŏ̸̭̲̑͡ ̷̱̃͑͡ͅẀ̘͙̐͞͡o͠҉̻̮ͬ̌r̨͔̜͂̈̕l͏̴̪̙̏̎d̴̡ͮ͛

str = Zalgor.purify(str)
puts str
# 'Hello World'

```

Simple transformation directly in String class:

```ruby
require 'zalgor/string'

# String has "to_zalgo" instance method
puts 'Hello World'.to_zalgo
```

Transformation options:

```ruby
# Zalgor.transform(string, **options)
# options can be:
# down:   Integer, the number of down combining chars
# mid:    Integer, the number of mid combining chars
# up:     Integer, the number of up combining chars
# random: Boolean, random each options (0..down|mid|up)
# default options if not specified
str = 'Hello World'

# with options
Zalgor.transform(str, down: 10, mid: 5, up: 1, random: true)

# with default options
Zalgor.transform(str)
```

LICENSE
-------

MIT
