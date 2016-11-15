class User
  :attr_accessor @db_name
  :attr_accessor @table_name

  @db_name: db_name
  @table_name: table_name

  def self.find( id )
    return "psql -d " + @db_name + " SELECT * FROM " + @table_name + " WHERE( id:" + id + ");"
  end

  def self.where( array_of_arguments )
    return
  end

  def self.all
    return "psql -d " + @db_name + " SELECT * FROM " + @table_name + ";"
  end

  def self.last
    return "psql -d " + @db_name + " SELECT * FROM " + @table_name + ";"
  end



end
