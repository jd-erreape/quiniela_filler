class MostRepeatedFiller
  attr_reader :columns_array

  def initialize(columns_array)
    @columns_array = columns_array
  end

  def fill
    15.times.map do |index|
      get_most_repeated_value(columns_array, index)
    end
  end

  private

  def get_most_repeated_value(column_array, index)
    elements = column_array.map { |column| column[index] }
    elements.reject! { |c| c == nil || c == '' }
    freq = elements.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    elements.sort_by { |v| freq[v] }.last
  end
end