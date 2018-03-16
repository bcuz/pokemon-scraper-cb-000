class Pokemon
  attr_reader :id, :name, :type, :db


  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("insert into pokemon (name, type) values (?, ?)", name, type)
  end

  def self.find(id, db)
    from = db.execute("select * from pokemon where id = #{id}")
    # p from
    # use indexes?
    x = self.new(id: from[0], name: from[1], type: from[2], db: from[3])
    binding.pry

  end
end
