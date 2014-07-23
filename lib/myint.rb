class Integer
  def factor()
    (1..self).select { |n| (self % n).zero? }
  end
end
