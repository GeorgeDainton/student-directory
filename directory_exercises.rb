class String
  def titleize
    self.split(" ").map{|word| word.capitalize}.join(" ")
  end
end

def input_students
  students = []
  puts "To finish, just hit return twice"
  while true do
    students << {name: name, country: country, cohort: :november}
    puts "Enter student:"
    name = gets.chomp.titleize
      while !name.empty? do
        puts "What country were they born in?:"
        country = gets.chomp.titleize
      end
    end
  students
end

students = input_students    