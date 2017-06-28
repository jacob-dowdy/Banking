class Account
attr_reader :name, :balance
  
  def initialize(name, balance=90)
    @name = name
    @balance = balance
  end
  # public method that displays the user's balance if the correct pin is entered.
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end  
 # public method that initiates cash withdrawal if the pin is correct.
  def withdraw(pin_number, amount)
      if pin_number == pin
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else 
          pin_error
      end
  end
  #private method for pin entry
  private
  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("Jacob", 100 )
