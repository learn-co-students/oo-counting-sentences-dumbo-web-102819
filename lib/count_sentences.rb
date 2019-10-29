require 'pry'

class String

  def sentence?
    self[-1] == '.' ? true : false
  end

  def question?
    self[-1] == '?' ? true : false
  end

  def exclamation?
    self[-1] == '!' ? true : false
  end

  def count_sentences
    words = self.split(' ')
    binding.pry
    sentences = words.select{ |word|
      word.sentence? || word.question? || word.exclamation?
    }
    sentences.length
  end
end