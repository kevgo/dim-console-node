require! {
  '..' : dim-output
  'chai' : {expect}
}


# some application code
application = ({console, process}) ->
  console.log 'some standard output'
  console.error 'some error output'
  process.stdout.write 'some process.stdout.write output'


describe 'capturing standard output', (...) ->

  it 'returns the captured standard output as a string', ->
    application dim-output
    expect(dim-output.output).to.equal 'some standard output\nsome error output\nsome process.stdout.write output'


  it 'allows to reset the text captured so far', ->
    application dim-output
    dim-output.reset!
    application dim-output
    expect(dim-output.output).to.equal 'some standard output\nsome error output\nsome process.stdout.write output'
