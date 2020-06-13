def substrings(sentence, dictionary)
  #arr_of_words = sentence.downcase.split(/ /)
  resultHash = dictionary.reduce(Hash.new(0)) do |result, string|
    if sentence.downcase.include?(string)
      result[string] += 1
      result
    else
      result
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)

#################################
### REWRITE THIS FROM SCRATCH ###
#################################