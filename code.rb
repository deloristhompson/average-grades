
def average(grades)
  total = grades.inject(0) {|sum, num| sum += num}
  total / grades.size.to_f
end

student_grades = [{
  jane: [98,95,88,97,74],
  sam: [85,93,98,88,49],
  matt: [87,93,89,97,65 ]
}]

jane = []
sammy = []
matty = []

student_grades.each do |grade|
  jane = average(grade.values[0])
  sammy = average(grade.values[1])
  matty = average(grade.values[2])
end

puts jane, sammy, matty

def letter_grade(average)
  if average >= 90
    puts "A"
  elsif average >= 80
    puts "B"
  elsif average >= 70
    puts "C"
  elsif average>= 60
    puts "D"
  else
    puts "F"
  end
end

puts letter_grade(jane), letter_grade(sammy), letter_grade(matty)

def rankings(students)
  students.each_with_index do |rank, index|
    puts "#{index + 1}. #{rank}"
  end
end

rankings(["Johnny", "Jane", "Sally", "Elizabeth", "Michael"])
