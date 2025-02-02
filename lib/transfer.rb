class Transfer
  attr_accessor
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
     @sender.valid? && @receiver.valid? && @sender.balance>@amount ? true : false
  end
  def execute_transaction
    if valid? && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      p "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if @status != "pending" && @status != "rejected"
      @receiver.balance -= @amount
      @sender.balance += @amount
      @status = "reversed"
    end
  end
  
end
