app "helloWorld"
    packages { pf: "https://github.com/roc-lang/basic-cli/releases/download/0.6.0/QOQW08n38nHHrVVkJNiPIjzjvbR3iMjXeFY5w1aT46w.tar.br" }
    imports [pf.Stdout]
    provides [main] to pf

birds = 3
iguanas = 2
total = addAndStringify birds iguanas

main =
  Stdout.line "There are \(total) animals."

addAndStringify = \a, b ->
  Num.toStr (a + b)
  