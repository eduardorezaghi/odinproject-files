#!/usr/bin/ruby


class Some

  def initialize
      method1
      # self.method1
  end

  private

   # This method is only accessible within the class
   def method1
       puts "private method1 called"
   end

end


s = Some.new
# s.method1