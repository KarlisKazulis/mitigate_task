class CoinManager
  attr_reader :balance
  def initialize
    @balance = 0.0
  end

  def add_coins(amount)
    @balance += amount if amount > 0
    @balance
  end

  def get_balance
    @balance
  end

  def deduct_amount(amount)
    return false if amount > @balance

    @balance -= amount
    true
  end

  def reset_balance
    old_balance = @balance
    @balance = 0.0
    old_balance
  end
end
