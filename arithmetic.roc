app "arithmetic"
    packages { pf: "https://github.com/roc-lang/basic-cli/releases/download/0.6.0/QOQW08n38nHHrVVkJNiPIjzjvbR3iMjXeFY5w1aT46w.tar.br" }
    imports [pf.Stdout]
    provides [main] to pf

a = 1
b = 2

total = Num.toStr (a + b)

main =
  Stdout.line "The total is \(total)"
