def substrings(sentence, dictionary)
  
  detected_words_array = Array.new

  sentence.split.each do |word|
    dictionary.each do |record|
      if word.downcase.include?(record)
        detected_words_array << record
      end
    end
  end
  detected_words_array.reduce(Hash.new(0)) do |k, v|
    k[v] += 1
    k
  end

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)

