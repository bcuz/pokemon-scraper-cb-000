class Pokemon
  attr_reader :id, :name, :type, :db


  def initialize(id:, name:, type:, db:)

  end

  def self.save(id, name, type)
    @db.execute("insert into pokemon (id, name, type) values (?, ?)", id, name, type)
  end
end
