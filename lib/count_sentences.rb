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
    delimiters = ["! ", ". ", "? "]
    new_array = self.split(Regexp.union(delimiters))
    new_array.count
  end
  #   chopped_string = self.split(". ")
  #   bang_sentences=chopped_string.each do
  #     |sentence|
  #     sentence.split("! ")
  #   end
  #   bang_sentences.flatten
  #   questions=bang_sentences.each do
  #     |sentence|
  #     sentence.split("? ")
  #   end
  #   questions.flatten
  #   def no_empties (array)
  #     questions.select{|item| item !=""}
  #   end
  #   questions.length

end
