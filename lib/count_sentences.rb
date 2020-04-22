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
    # self.split(/\.|\?|\!/).delete_if {|word| word.size < 2}.count
    self.split(/[.?!]/).grep(/\S/).count
  end
end