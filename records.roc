app "records"
    packages { pf: "https://github.com/roc-lang/basic-cli/releases/download/0.6.0/QOQW08n38nHHrVVkJNiPIjzjvbR3iMjXeFY5w1aT46w.tar.br" }
    imports [pf.Stdout]
    provides [main] to pf

total = addAndStringify { cats: 1, dogs: 3 }

addAndStringify = \counts ->
  sum = counts.cats + counts.dogs
  Num.toStr sum

totalWithNote = addAndStringify { cats: 1, dogs: 3, note: "Hey!" } # works with extra fields if required fields are present.

# short hand
returnFoo = .foo
fooShortHand = returnFoo { foo: "hi!", bar: "blah" }

#destructure

addAndStringifyDestructured = \{ cats, dogs } ->
  sum = cats + dogs
  Num.toStr sum

totalDestructured = addAndStringifyDestructured { cats: 1, dogs: 4 }


main =
  { x, y } = { x: "hey", y: "you" }

  Stdout.line "total: \(total), totalDestructured: \(totalDestructured), totalWithNote: \(totalWithNote), fooShortHand: \(fooShortHand) \(x) \(y)"
