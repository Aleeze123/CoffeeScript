# Calculator functions
add = (a, b) -> a + b
subtract = (a, b) -> a - b
multiply = (a, b) -> a * b
divide = (a, b) -> 
  if b == 0 then 'Error' else a / b

# Update the display with the result
updateDisplay = (value) ->
  document.getElementById("display").value = value

# Clear the display
clearDisplay = ->
  document.getElementById("display").value = ''

# Function to append numbers to the display
appendToDisplay = (value) ->
  displayValue = document.getElementById("display").value
  document.getElementById("display").value = displayValue + value

# Function to calculate the result
calculate = ->
  displayValue = document.getElementById("display").value
  try
    result = eval(displayValue) # Convert expression to actual result
    updateDisplay(result)
  catch error
    updateDisplay('Error')

# Event listeners for buttons
document.getElementById("btn1").onclick = -> appendToDisplay('1')
document.getElementById("btn2").onclick = -> appendToDisplay('2')
document.getElementById("btn3").onclick = -> appendToDisplay('3')
document.getElementById("btn4").onclick = -> appendToDisplay('4')
document.getElementById("btn5").onclick = -> appendToDisplay('5')
document.getElementById("btn6").onclick = -> appendToDisplay('6')
document.getElementById("btn7").onclick = -> appendToDisplay('7')
document.getElementById("btn8").onclick = -> appendToDisplay('8')
document.getElementById("btn9").onclick = -> appendToDisplay('9')
document.getElementById("btn0").onclick = -> appendToDisplay('0')
document.getElementById("btnAdd").onclick = -> appendToDisplay('+')
document.getElementById("btnSubtract").onclick = -> appendToDisplay('-')
document.getElementById("btnMultiply").onclick = -> appendToDisplay('*')
document.getElementById("btnDivide").onclick = -> appendToDisplay('/')
document.getElementById("btnClear").onclick = clearDisplay
document.getElementById("btnEqual").onclick = calculate
