class BankAccount
  attr_accessor :status
  attr_reader :name, :balance
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  def display_balance
    p "Your balance is #{@balance}."
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
