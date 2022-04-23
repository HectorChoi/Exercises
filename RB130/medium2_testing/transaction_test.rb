require 'minitest/autorun'

require_relative 'transaction.rb'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(10)
    auto_input = StringIO.new("20\n")
    auto_output = StringIO.new
    transaction.prompt_for_payment(input: auto_input, output: auto_output)
    assert_equal(20.0, transaction.amount_paid)
  end
end
