def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE books.series_id = 1 ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH(characters.motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(id) FROM characters GROUP BY species ORDER BY count(id) DESC LIMIT 1; "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series, subgenres ON authors.id = series.author_id AND series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN books, character_books, characters ON series.id = books.series_id AND books.id = character_books.book_id AND character_books.character_id = characters.id GROUP BY characters.species HAVING characters.species = 'human' ORDER BY COUNT(characters.id) DESC; "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.id) as book_count FROM characters JOIN character_books ON characters.id = character_books.character_id GROUP BY characters.id ORDER BY book_count DESC, characters.name  ;"
end
