app "debugger"
    packages { pf: "https://github.com/roc-lang/basic-cli/releases/download/0.6.0/QOQW08n38nHHrVVkJNiPIjzjvbR3iMjXeFY5w1aT46w.tar.br" }
    imports [pf.Stdout]
    provides [main] to pf

pluralize = \singular, plural, count ->
  dbg count
  dbg Str.concat singular plural
  dbg T "the value of cound is:" count

  if count == 1 then
    singular
  else
    plural

thing = pluralize "a" "b" 1
thing2 = pluralize "a" "b" 3

main = 
  Stdout.line "thing is \(thing) thing2 is \(thing2)"
