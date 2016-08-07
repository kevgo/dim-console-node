require! {
  'chalk' : {dim, red}
}


dim-console =

  # Captures the output to stdout
  stdout-output: ''

  # Captures the output to stderr
  stderr-output: ''

  # Captures the cumulated output to stdout and stderr
  output: ''


  console:

    log: (text) ->
      dim-console.stdout-output += text
      dim-console.output += "#{text}\n"
      console.log dim text.trim-right!

    error: (text) ->
      dim-console.stderr-output += text
      dim-console.output += "#{text}\n"
      console.log dim red text.trim-right!


  process:

    stdout:

      write: (text) ->
        dim-console.stdout-output += text
        dim-console.output += text
        process.stdout.write dim text.trim-right!

    stderr:

      write: (text) ->
        dim-console.stderr-output += text
        dim-console.output += "#{text}"
        process.stderr.write dim red text.trim-right!


  reset: ->
    dim-console.output = ''
    dim-console.stdout-output = ''
    dim-console.stderr-output = ''



module.exports = dim-console
