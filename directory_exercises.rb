class String
  def titleize
    self.split(" ").map{|word| word.capitalize}.join(" ")
  end
end


def input_students
  students = []
  puts "To finish, just hit return twice"
  while true do
    puts "Enter student:"
    name = gets.chomp.titleize
    if name == ""
      break
    end
      while !name.empty? do
        puts "What country were they born in?:"
          country = gets.chomp.titleize
        puts "How tall are they (cm)?:"
          height = gets.chomp.titleize
        puts "What cohort are they in?:"
          cohort = gets.chomp.to_sym
        break
      end
    students << {name: name, country: country, height: height, cohort: cohort}
  end
  students
end
     
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]}, born in #{student[:country]}, #{student[:height]} cm (#{student[:cohort].capitalize} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)