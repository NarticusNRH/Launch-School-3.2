#Weather Forecast
#Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. 
#However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
10.times { predict_weather }
#sunshine is a truthy object and 'if sunshine' will always evaluate to true no matter what it points to
#change to 'if sunshine == 'true'
#OR assign sunshine to the boolean values of true and false 'sunshine = [true, false].sample'