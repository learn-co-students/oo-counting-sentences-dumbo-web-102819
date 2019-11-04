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
    new_array = self.split
    count =0
    new_array.each do |word|
      if word.sentence? || word.question?|| word.exclamation?
         count +=1
      end 
    end 
    count
  end
end