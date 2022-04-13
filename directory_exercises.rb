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
          if country == ""
            break
          end 
        puts "How tall are they (cm)?:"
          height = gets.chomp.titleize
        if height == ""
          break
        end
        puts "What cohort are they in?:"
          cohort = gets.chomp.to_sym
        if cohort == ""
          break
        end
        break
      end
    students << {name: name, country: country, height: height, cohort: cohort}
  end
  students
end
     
def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end 

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]}, born in #{student[:country]}, #{student[:height]} cm (#{student[:cohort]} cohort)".center(20)
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)