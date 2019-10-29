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
    #binding.pry
    firstSplit = self.split(/!|\.|\?/).select do |item|
      item.length > 0
    end
    firstSplit.length
    
  end
end