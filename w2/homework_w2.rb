require 'json'

file = File.read('grades.json')
grades = JSON.parse(file)

average = grades.sum{ |person| person['grade']} / grades.count

puts "Average grade is #{average}"

students_who_pass_the_exam = []
students_who_fail_the_exam = []

grades.each do |person|
    if person['grade'] >= average
        students_who_pass_the_exam << person['name']
    else  
        students_who_fail_the_exam << person['name']
    end
end

puts "#{students_who_fail_the_exam.take(students_who_fail_the_exam.size - 1).join(',')} and #{students_who_fail_the_exam.last} are failed" 
puts "#{students_who_pass_the_exam.take(students_who_pass_the_exam.size - 1).join(',')} and #{students_who_pass_the_exam.last} are passed" 


