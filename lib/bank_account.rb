class BankAccount
  attr_accessor :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  def display_balance
    @balance
  end
  
  def deposit(ammount)
    @balance += ammount
  end
  
  def valid?
    valid = false
    if status == "open" && balance > 0
      valid = true 
    end
    valid
  end
  
end
