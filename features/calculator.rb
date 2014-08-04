class Calculator
  attr_accessor :operation
  attr_accessor :numbers

  def add_number(number)
    @numbers << number.to_i
  end

  def initialize
    @numbers = []
  end

  def calculate
    result = 'Invalid operation!'
    if @numbers.empty?
      result = 'Missing parameters'
    elsif (@numbers[1].nil?)
      result = @numbers[0]
    elsif operation.eql? '+'
      result = add
    elsif operation.eql? '-'
      result = sub
    elsif operation.eql? '/'
      if !@numbers[1].eql? 0
        result = div
      end
    elsif operation.eql? 'x'
      result = mult
    end

    result.to_s
  end

private

  def add
    @numbers[0] + @numbers[1]
  end

  def sub
    @numbers[0] - @numbers[1]
  end

  def div
    @numbers[0] / @numbers[1]
  end

  def mult
    @numbers[0] * @numbers[1]
  end
end