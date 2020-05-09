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
    self.split(/\.|\?|\!/).delete_if {|sentence| sentence.size == 0}.count
    # self.split(/[.?!]/).grep(/\S/).count
  end 
  
end

# binding.pry

  # In Ruby some methods have a question mark (?) that ask a question like include? 
  # that ask if the object in question is included, this then returns a true/false.
  # Adding a ? to the end of a method name does not in any way change the return value 
  # of the method, but instead only indicates that it is a predicate method. That is,
  # that the method's return value should be treated as a boolean, but does not need to
  # be strictly boolean (i.e. true or false)