class Dog
  attr_accessors :id, :name, :breed
  
  def initialize(id:nil, name:, breed:)
    @id = id
    @name = name
    @breed - breed
  end
end
  