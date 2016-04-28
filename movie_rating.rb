movies = {
    Scarface: 4,
    Batman: 3,
    Boxtrolls: 3,
    Godfather: 4
}

puts "What would you like to do? "
choice = gets.chomp

case choice
when 'add'
    puts 'What movie would you like to add? '
    title = gets.chomp
    if movies[title.to_sym] == nil
        puts "How would you rate #{title}? "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} was added with a rating of #{rating}!"
    else
        puts "I'm sorry, #{title} already exists"
    end
when 'update'
    puts 'Which movie would you like to update? '
    title = gets.chomp
    if movies[title.to_sym] == nil
        puts "We don't have that title on file"
    else
        puts "How would you rate #{title}? "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} was updated to have a rating of #{rating}!"
    end
when 'display'
    movies.each { |k, v| puts "#{k}: #{v}" }
when 'delete'
    puts 'Which movie would you like to delete? '
    title = gets.chomp
    if movies[title.to_sym] == nil
        puts "We don't have that title on file"
    else
        movies.delete(title.to_sym)
        puts "#{title} was successfully deleted!"
    end
else
    puts 'Error!'
end
