movies = {
    ironman: 4
  }
  
  puts "Input your favorite film"
  choice = gets.chomp
  
  case choice
    when "add"
      puts "Title"
      title = gets.chomp
      puts "Rating 1 to 4"
      rating = gets.chomp
      if movies[title.to_sym].nil?
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}."
      else
        puts "the movie already exists"
      end
    when "update"
      puts "Title want to update"
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "no film exist"
      else
        puts "rating"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been updated with a rating of #{rating}."
      end
    when "display"
      movies.each { 
        |movie, rating| 
        puts "#{movie}: #{rating}"
      }
    when "delete"
      puts "Movie you want to delete"
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "no movie exist"
      else
        movies.delete(title.to_sym)
      end
    else
      puts "Error!"
  end