def all_words_capitalized?(words) # word = 'Dog', word.capitalize = 'Dog'
  words.all? { |word| word.capitalize == word }
end

def no_valid_url?(urls)
  valid_endings = [".com", ".net", ".io", ".org"]
  urls.none? do |url|
    valid_endings.any? { |ending| url[-ending.length..-1] == ending }
  end
  # urls.none? { |url| url.include?(".com") || 
  #   url.include?(".net") || 
  #   url.include?(".io") || 
  #   url.include?(".org") }
end

def any_passing_students?(students)
  students.any? { |student| (student[:grades].sum / (student[:grades].length)) >= 75 }
end
