dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
  dictionary.each do |word|
    string.include?(word)
    puts word + " = " + string
  end
end
substrings("below", dictionary)
