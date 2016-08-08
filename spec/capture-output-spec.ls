require! {
  '..' : dim-console
  'chai' : {expect}
}


# some test application behavior
application = ({console, process}) ->
  console.log 'some standard output'
  console.error 'some error output'
  process.stdout.write 'some process.stdout.write output'
  process.stderr.write 'some process.stderr.write output'


describe 'capturing standard output', (...) ->

  before-each ->
    dim-console.reset!
    application dim-console


  it 'returns the captured standard output as stdout-output', ->
    expect(dim-console.stdout-output).to.equal 'some standard output\nsome process.stdout.write output'


describe 'capturing stderr output', (...) ->

  before-each ->
    dim-console.reset!
    application dim-console


  it 'returns the captured error output as as stderr-output', ->
    expect(dim-console.stderr-output).to.equal 'some error output\nsome process.stderr.write output'


describe 'capturing cumulated output', (...) ->

  before-each ->
    dim-console.reset!
    application dim-console


  it 'returns the captured cumulated output as as output', ->
    expect(dim-console.output).to.equal 'some standard output\nsome error output\nsome process.stdout.write outputsome process.stderr.write output'


describe 'reset', (...) ->

  before-each ->
    application dim-console
    dim-console.reset!

  it 'resets the recorded stdout data', ->
    expect(dim-console.stdout-output).to.be.empty


  it 'resets the recorded stderr data', ->
    expect(dim-console.stderr-output).to.be.empty


  it 'resets the recorded cumulated data', ->
    expect(dim-console.output).to.be.empty
