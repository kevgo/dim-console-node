require! {
  '..' : dim-console
  'chai' : {expect}
}


# some application code
application = ({console}) ->
  console.log 'some standard output'
  console.error 'some error output'


describe 'capturing standard output', (...) ->

  it 'returns the captured standard output as a string', ->
    application console: dim-console
    expect(dim-console.output).to.equal 'some standard output\nsome error output\n'


  it 'allows to reset the text captured so far', ->
    application console: dim-console
    dim-console.reset!
    application console: dim-console
    expect(dim-console.output).to.equal 'some standard output\nsome error output\n'
