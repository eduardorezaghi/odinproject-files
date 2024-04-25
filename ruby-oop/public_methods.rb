class Some
  def method1
    puts "public method1"
  end

  def method2
    puts "public method2"
  end

  def method3
    puts "public method3"
    method1
    self.method1
  end

  private
  def method4
    puts "private method4"
  end
end


p s.method1
p s.method2
p s.method3
