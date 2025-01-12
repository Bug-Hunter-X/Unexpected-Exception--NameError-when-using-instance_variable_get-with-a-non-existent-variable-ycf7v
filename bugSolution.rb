```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def safe_get_instance_variable(variable_name)
    instance_variable_defined?(variable_name) ? instance_variable_get(variable_name) : nil 
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.instance_variable_set(:@value, 20) 
puts my_object.value # Output: 20

#Safe way to access the variable
puts my_object.safe_get_instance_variable(:@nonExistentVariable) # Output: nil
puts my_object.safe_get_instance_variable(:@value) # Output: 20
```