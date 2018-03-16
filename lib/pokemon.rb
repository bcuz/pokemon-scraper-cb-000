class Pokemon
  attr_reader :id, :name, :type, :db


  def initialize(id:, name:, type:, db:)

  end

  def save(name, type)
    @db.execute("insert into pokemon ")
  end
end
