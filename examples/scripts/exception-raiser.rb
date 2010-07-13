class Foo
  def foo
    raise ArgumentError, "I want to have an argument!"
  end
end

f = Foo.new
f.foo
