module FunWithStrings
  def palindrome?
    return false if self.nil?
    pal = self.gsub(/\W/, '').downcase
    pal == pal.reverse
  end
  def count_words
    return nil if self.nil?
    res = Hash.new(0)
    words = self.downcase.strip.split(/\W+/).each{|word| res[word] += 1}
    res
  end
  def anagram_groups
    return [] if self.nil?
    return [] if  self.length == 0
    #split words into array
    words = self.strip.split(' ')
    # group words by sorted anagram (if they are the same when sorted)
    # so powerful
    words.group_by { |word| word.downcase.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
