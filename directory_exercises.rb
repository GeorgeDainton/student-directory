class String
  def titleize
    self.split(" ").map{|word| word.capitalize}.join(" ")
  end
end

def input_students
  puts "Enter student:"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp.titleize
  puts "What country were they born in?:"
  country = gets.chomp.titleize
  while !name.empty? || !country.empty? do
    students << {name: name, country: country, cohort: :november}
    puts "Now we have #{students.count} students"
    puts "Enter student:"
    name = gets.chomp.titleize
      if name.empty?
        break
      else
    puts "What country were they born in?:"
      end
    country = gets.chomp.titleize
  end
  students 
end 

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]}, born in #{student[:country]}, (#{student[:cohort].capitalize} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)