class Calculator
  attr_accessor :running_total

  def initialize(running_total=0)
    @running_total = running_total
  end
  
  def add(x)
    @running_total += x
  end
  
  def subtract(x)
    @running_total -= x
  end
  
  def clear
    @running_total = 0
  end
  
  def total 
    @running_total
  end

end