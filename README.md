# Node.JS Dim Console

> A console object for testing console output of libraries

[![Circle CI](https://circleci.com/gh/kevgo/dim-console-node.svg?style=shield)](https://circleci.com/gh/kevgo/dim-console-node)

* __Does not interfere with the built-in console:__
  You inject this library as a dependency into your code.
  This is cleaner, and simpler in larger code bases or test setups.
  It ensures that you only capture the output of your library under test.
  The output of other parts of the system -
  like your test framework, debuggers, tracers, or other libraries - is not affected.

* __Captures the output to the console:__
  You can verify it against expected output.

* __Dumps the ongoing output as it is captured:__
  Prints it dimmed,
  so that it is distinguishable from other output.



## Usage

```javascript
const dimConsole = require('dim-console')

// use the dim console in your test code somewhere
// your code must understand and use the "console" parameter
myMethodUnderTest({console: dimConsole})

// get the output captured so far
dimConsole.output

// reset the captured output
dimConsole.reset()
```

## Related projects

* [capture-stream](https://github.com/doowb/capture-stream):
  completely replaces Node's console for all code


## Update dependencies

```
$ update
```


## Publish

```
$ npm version <patch|minor|major>
$ npm publish
```
