require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(1000)
    @transaction = Transaction.new(10)
  end

  def test_accept_money
    @transaction.amount_paid = 20
    
    previous_amount = @register.total_money
    @register.accept_money(@transaction)
    current_amount = @register.total_money

    assert_equal(previous_amount + 20, current_amount)
  end

  def test_change
    @transaction.amount_paid = 20
    
    assert_equal(10, @register.change(@transaction))
  end
  
  def test_give_receipt
    # @transaction.amount_paid = 20
    
    assert_output("You've paid $10.\n") { @register.give_receipt(@transaction) }
  end
end
