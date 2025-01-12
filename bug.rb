```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.instance_variable_set(:@value, 20) #Modifying the value using instance_variable_set
puts my_object.value # Output: 20

#Trying to access a non-existent instance variable
puts my_object.instance_variable_get(:@nonExistentVariable) # Throws an exception: NameError: undefined method `instance_variable_get' for nil:NilClass
```