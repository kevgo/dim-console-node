require! {
  'chalk' : {dim}
}


module.exports =

  # Captures the cumulated output to stdout and stderr
  output: ''

  log: (text) ->
    @output += "#{text}\n"
    console.log dim text.trim-right!

  error: (text) ->
    @output += "#{text}\n"
    console.log dim text.trim-right!

  reset: ->
    @output = ''
