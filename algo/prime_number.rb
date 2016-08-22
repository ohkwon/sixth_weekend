# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
require 'rspec'

class Primenumber

  def is_prime?(number)

    counter = 1
    (number - 2).times do
      if number % (number - counter) == 0
        return false #not prime
      end
      counter += 1
    end
    return true #is prime

  end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

  def highest_prime_number_under(number)

    prime = number - 1
    counter = 1
    until is_prime?(prime)
      prime -= 1
    end
    return prime

  end

end

RSpec.describe Primenumber do
  describe '#is_prime?' do
    it 'should return true if number is prime' do
      primer = Primenumber.new
      expect(primer.is_prime?(17)).to eq(true)
    end

    it 'should return false if number is not prime' do
      primer = Primenumber.new
      expect(primer.is_prime?(16)).to eq(false)
    end
  end

  describe '#highest_prime_number_under' do
    it 'should return the highest prime number under the given number' do
      primer = Primenumber.new
      expect(primer.highest_prime_number_under(18)).to eq(17)
    end
  end
end