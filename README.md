# Dim Console

> A Node.JS console object to be used for testing console output.

* __Does not interfere with the built-in console:__
  You inject this library as a dependency into your code.
  This is cleaner in larger code bases or test setups,
  and ensures that you only captures the output of your library under test.
  The output of other parts of the system -
  like your test framework or other libraries - is not affected.
  If you want to capture all console output,
  use [capture-stream](https://github.com/doowb/capture-stream).

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


## Update dependencies

```
$ update
```


## Publish

```
$ npm version <patch|minor|major>
$ npm publish
```
