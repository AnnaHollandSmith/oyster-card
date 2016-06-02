class Oystercard
  attr_reader :balance

MAXIMUM = 90

  def initialize
    @balance = 0
  end

  def top_up(money)
    fail "Cannot top up more than 90" if balance + money > MAXIMUM
      @balance += money
  end

  def deduct(fare)
    @balance -= fare
  end

  def touch_in
  end

  def touch_out
  end

  def in_journey
  end
end

# card = Oystercard.new
# card.balance => nil
