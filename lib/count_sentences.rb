require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
  split_characters = [".","!","?"]
  new_arr = []
    string_arr = self.split(/[.?!]+/)
    string_arr.select do |word|
      if word.length != 0
        new_arr << word
      elsif
        string_arr.size == 0
        return 0
      else 
        return string_arr.size
      end
    end
    return new_arr.size
  end
end