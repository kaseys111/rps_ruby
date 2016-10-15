# Rock, Paper, Scissors

rps_moves = ['rock', 'paper', 'scissors', 'r', 'p', 's', '1', '2', '3']
quit_array = ['quit', 'q', 'exit', 'e']
line_width = 15
input_score = 0
comp_score = 0
best = 2
out_of = 3

puts 'Let\'s play Rock, Paper, Scissors! Best ' + best.to_s + ' out of ' + out_of.to_s + '!'
puts
puts 'Throw down your first move in 3...2...1...'
puts

while true

  input_move = gets.chomp.downcase
  comp_move = rps_moves[0..2].sample

  if ((rps_moves.include? input_move) != true) && ((quit_array.include? input_move) != true)

      puts 'Ah...that\'s not a real move.'

  elsif (quit_array.include? input_move) == true

    if comp_score < input_score
      puts 'You\'re just quitting now because you\'re ahead. I would have won if we kept going...'

    elsif comp_score > input_score
      puts 'Yay! I won!'

    else
      puts 'Thanks for playing!'
    end

    puts
    puts ('Final score'.center(line_width))
    puts ('Me'.ljust(line_width/2)) + ('You'.rjust(line_width/2))
    puts (comp_score.to_s.ljust(line_width/2)) + (input_score.to_s.rjust(line_width/2))
    break

  else

    puts 'Okay, I play ' + comp_move + '.'

    if input_move == 'r' || input_move =='1'
      input_move = 'rock'
    elsif input_move == 'p' || input_move == '2'
      input_move = 'paper'
    elsif input_move == 's' || input_move == '3'
      input_move = 'scissors'
    end

    if input_move == comp_move
      puts 'Tie!'

    elsif (input_move == 'paper' && comp_move == 'rock') || (input_move == 'rock' && comp_move == 'scissors') || (input_move == 'scissors' &&   comp_move == 'paper')
      puts 'You win!'
      input_score+=1

    else
      puts 'You lose!'
      comp_score+=1
    end
  end

  puts
  puts ('Current score'.center(line_width))
  puts ('Me'.ljust(line_width/2)) + ('You'.rjust(line_width/2))
  puts (comp_score.to_s.ljust(line_width/2)) +  (input_score.to_s.rjust(line_width/2))
  puts

  if input_score == best
    best+=1
    out_of+=2
    puts 'No, wait! I mean...best ' + best.to_s + ' out of ' + out_of.to_s + '!'
    puts
  elsif comp_score == best
    puts 'I win!! We\'re done here.'
    break
  end

  puts 'Let\'s play again! 3...2...1...'
  puts

end
