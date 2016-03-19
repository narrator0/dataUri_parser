# dataUri_parser

## Introduction

The is a ruby gem that deals with dataURIs, which will encode and decode files with Base64.

## How to use

I'm on my way of develope. Will write this after its more complete.

### Install

```
gem install dataUri_parser

```

### Output dataURI into a file

```
require 'dataUri_parser'

DataUriParser.pares(dataURI, './test.jpg')

```

### Input data to dataURI

```
require 'dataUri_parser'

dataUri = DataUriParser.toDataUri('./output.jpg', 'image/jpg')
```

> note that the second param is the <mediatype> in dataURI

## License

(The MIT License)

Copyright (C) 2016 *Arfullight*

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.