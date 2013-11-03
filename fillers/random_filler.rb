class RandomFiller
  def fill
    15.times.map { %w(1 X 2).sample }
  end
end