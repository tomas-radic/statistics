class Median < Patterns::Calculation
  pattr_initialize :input

  private

  def result
    if input_length == 0
      nil
    elsif input_length.even?
      even_median
    else
      odd_median
    end
  end

  def even_median
    (sorted_input[input_idx] + sorted_input[input_idx - 1]) / 2.0
  end

  def odd_median
    sorted_input[input_idx]
  end

  def sorted_input
    @sorted_input ||= input.sort
  end

  def input_idx
    @input_idx ||= input_length / 2
  end

  def input_length
    @input_length ||= input.length
  end
end
