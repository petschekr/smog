## Information

<table>
<tr> 
<td>Package</td><td>smog</td>
</tr>
<tr>
<td>Description</td>
<td>HTML5/Node/WebSocket MongoDB viewer</td>
</tr>
<tr>
<td>Node Version</td>
<td>>= 0.6 <em>(I think)</em></td>
</tr>
</table>

## Usage

Install smog by running ```npm install smog -g```

### Local

smog will run on port 8080 by default

`$ smog`

You can make smog listen on a different port by running it with the `-p` switch

`$ smog -p 1337`


## TODO

##### Administration

* Ability to shutdown/restart server
* Streaming CPU/bandwidth usage graphs
* Streaming Geo heatmap graph
* Full replica set management

##### Editor

* Command bar for executing raw commands (with auto-complete/syntax highlighting)
* Support for arbitrary languages (coffee-script, clojurescript, etc.)
* Allow changing of themes/syntax highlighters
* Runtime syntax checks of all languages

##### Document Listing

* Sort by X
* Better document preview
* Streaming results (when a new document is added that matches the query it should be added)
* Inline editor
* Graphs
* Pagination

##### GUI

* The smog v1 GUI has been removed in order to be potentially replaced by [`node-webkit`](https://github.com/rogerwang/node-webkit "node-webkit")

## License

(MIT License)

Copyright (c) 2013 Ryan Petschek <petschekr@gmail.com> and (originally) Fractal <contact@wearefractal.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
