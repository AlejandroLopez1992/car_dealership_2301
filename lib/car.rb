
class Car


  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make 
    make_model_array = @make_model.split(' ')
    make_model_array[0]
  end

  def model
    make_model_array = @make_model.split(' ')
    make_model_array[1]
  end

  def monthly_payment
    @monthly_payment
    # this def can be substituted with attr_accessor
    # if need to be accessed by another class later
  end

  def loan_length
    @loan_length
     # this def can be substituted with attr_accessor
    # if need to be accessed by another class later
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def color
    @color
  end

  def paint!(color)
    @color = color
  end
end
