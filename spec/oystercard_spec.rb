require 'oystercard'

describe Oystercard do
  it 'has a balance of zero' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do

  	it 'can top-up the balance' do
  	  expect{ subject.top_up 1 }.to change{ subject.balance }.by 1
  	end

  	it 'raises an error if balance exceeds £95' do
  	  maximum_balance = Oystercard::MAXIMUM_BALANCE
  	  subject.top_up(maximum_balance)
  	  expect{subject.top_up(1)}.to raise_error('Sorry, you have exceeded the maximum limit')
    end
  end

  describe '#deduct' do

  	it 'can deduct from the balance' do
      subject.top_up(20)
	  expect{ subject.deduct 4}.to change{ subject.balance }.by -4
    end
  end

end


