require! {
  'chalk' : {dim}
}


module.exports =
  log: (text) -> console.log dim text.trim-right!
  error: (text) -> console.log dim text.trim-right!
