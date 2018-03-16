class Pokemon
  attr_reader :id, :name, :type, :db


  def initialize(id:, name:, type:, db:)

  end

  def self.save(id, name, type)
    @db.execute("insert into pokemon (name, type) values (?, ?)", name, type)
  end
end
