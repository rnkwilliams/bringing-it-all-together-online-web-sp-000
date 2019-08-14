class Dog
  attr_accessor :id, :name, :breed
  
  def initialize(id:nil, name:, breed:)
    @id, @name, @breed = id, name, breed
  end
  
  def self.create_table
    sql = <<-SQL
    CREATE TABLE dogs(
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
    )
    SQL
    
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = "DROP TABLE dogs"
    
    DB[:conn].execute(sql)
  end
  
  def self.new_from_db(row)
    id = row[0]
    name = row[1]
    breed = row[2]
    self.new(id, name, breed)
  end
  
  
end
  