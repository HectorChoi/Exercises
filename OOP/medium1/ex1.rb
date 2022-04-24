class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def display_switch
    puts "Switch is #{switch}"
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

machine = Machine.new
p machine.start
machine.display_switch
p machine.stop
machine.display_switch
