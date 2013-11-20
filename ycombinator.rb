ycombinator = ->(f) do
  Proc.new { |x| x.call(x) }.call(
    Proc.new do |x|
      f.call(
        Proc.new do |y|
          x.call(x).call(y)
        end
      )
    end
  )
end

# Test that it works.
almost_factorial = Proc.new do |f|
                    Proc.new do |n|
                      if n == 0
                        1
                      else
                        n * f.call(n - 1)
                      end
                    end
                  end

factorial = ycombinator.call(almost_factorial)

# factorial.call(5)
# => 120.