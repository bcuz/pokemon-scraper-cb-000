class Pokemon
  attr_reader :id, :name, :type, :db


  def initialize(id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    db.execute("insert into pokemon (name, type) values (?, ?)", name, type)
  end

  def self.find(id, db)
    from = db.execute("select * from pokemon where id = #{id}")
    # p from

    # use indexes?
    self.new(from[0], from[1], from[2], from[3])

  end
end
