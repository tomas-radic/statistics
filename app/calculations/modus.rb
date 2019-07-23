class Modus < Patterns::Calculation
  pattr_initialize :input

  private

  attr_reader :counts

  def result
    modus
  end

  def modus
    calculate_elements_counts

    return [] if no_modus?
    counts.map { |element, count| count == max_count ? element : nil }.compact.sort
  end

  def calculate_elements_counts
    @counts = {}

    input.map do |element|
      @counts[element] ||= 0
      @counts[element] += 1
    end
  end

  def max_count
    @max_count ||= counts.values.max
  end

  def no_modus?
    (counts_length > 1) && counts.values.uniq.length == 1
  end

  def counts_length
    @counts_length ||= counts.length
  end
end
