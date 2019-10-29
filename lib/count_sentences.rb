require 'pry'

class String

  def sentence?
    @sentence = "Hi, my name is Sophie."
    self.end_with?(".")
  end

  def question?
    @question = "What's your name?"
    self.end_with?("?")
  end

  def exclamation?
    @exclamation = "Hi, my name is Sophie!"
    self.end_with?("!")
  end

  def count_sentences
    @count_sentences = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
