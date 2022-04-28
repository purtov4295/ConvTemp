require './lib/check_error'

class IOAdapter < CheckError
  def render_menu
    puts "Choose: \n" \
         "\t1 - Сelsius to Kelvin\n" \
         "\t2 - Сelsius to Fahrenheit\n" \
         "\t3 - Kelvin to Сelsius\n" \
         "\t4 - Kelvin to Fahrenheit\n" \
         "\t5 - Fahrenheit to Сelsius\n" \
         "\t6 - Fahrenheit to Kelvin\n" \
         "Enter 'q' to quit."
  end

  def render_value
    puts "Enter 'q' to quit."
    puts 'Enter temperature value:'
  end

  def user_value
    gets.to_s.chomp
  end

  def convert_choose
    loop do
      render_menu
      choose = user_value
      return choose if check_menu_user_value?(choose)

      puts 'Wrong choose. Try again.'
    end
  end
end
