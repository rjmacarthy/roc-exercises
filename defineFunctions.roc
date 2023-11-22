app "defineFunctions"
    packages { pf: "https://github.com/roc-lang/basic-cli/releases/download/0.6.0/QOQW08n38nHHrVVkJNiPIjzjvbR3iMjXeFY5w1aT46w.tar.br" }
    imports [pf.Stdout]
    provides [main] to pf

birds = 3
iguanas = 2
total = addAndStringify birds iguanas

posOrNeg = getPositiveOrNegative -1

getPositiveOrNegative = \num ->
  if num < 0 then
    "negative"
  else
    "positive"

addAndStringify = \a, b ->
  sum = a + b

  if sum == 0 then
    ""
  else
    Num.toStr (a + b)

main =
  Stdout.line "There are \(total) animals. and the number is \(posOrNeg)."


  
