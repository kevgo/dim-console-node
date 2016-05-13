require! {
  'chalk' : {dim}
}


dim-output =

  # Captures the cumulated output to stdout and stderr
  output: ''

  console:

    log: (text) ->
      dim-output.output += "#{text}\n"
      console.log dim text.trim-right!

    error: (text) ->
      dim-output.output += "#{text}\n"
      console.log dim text.trim-right!

  process:

    stdout:

      write: (text) ->
        dim-output.output += "#{text}"
        process.stdout.write dim text.trim-right!

  reset: ->
    dim-output.output = ''



module.exports = dim-output
