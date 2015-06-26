require 'byebug'

@life1 = 3
@life2 = 3
@score1 = 0
@score2 = 0

def generate_question
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  puts " Player1: What is #{@num1} + #{@num2}?"
  @ans1 = gets.chomp.to_i
  puts " Player2: What is #{@num1} + #{@num2}?"
  @ans2 = gets.chomp.to_i
end

def verify_answer
  until (@life1 == 0) || (@life2 == 0)
    generate_question 
    if @ans1 == @num1 + @num2
      @score1 += 1
    else
      @life1 -= 1
    end
    if @ans2 == @num1 + @num2
      @score2 += 1
    else
      @life2 -= 1
    end
    puts "Player1 has #{@life1} lives left!"
    puts "Player1's score is #{@score1}!"
    puts "Player2 has #{@life2} lives left!"
    puts "Player2's score is #{@score2}!"
  end
  if @life1 > @life2
    puts "Player1 wins!"
  else
    puts "Player2 wins!"
  end
end

verify_answer




