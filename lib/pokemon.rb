class Pokemon
  attr_reader :id, :name, :type, :db
  # dont understand these keyword

# is initialized with keyword arguments of name, type and db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  # def initialize(options = {})
  #   @id = options.fetch(:bar, 'default')
  #   @name = options.fetch(:bar, 'default')
  #   @type = options.fetch(:bar, 'default')
  #   @db = options.fetch(:bar, 'default')
  # end

  def self.save(name, type, db)
    db.execute("insert into pokemon (name, type) values (?, ?)", name, type)
  end
  #
  def self.find(id, db)
    from = db.execute("select * from pokemon where id = #{id}")
    # p from[0][0]
    # use indexes?

    # expected 0 ?? dont think i was getting that error b4
    # x = self.new(id: from[0], name: from[1], type: from[2], db: db)
    # binding.pry
    # x

    # not sure why this isnt working now
    id = from[0][0]
    name = from[0][1]
    type = from[0][2]
    self.new(id: , name: , type: , db)
    # self.new(id: from[0][0], name: from[0][1], type: from[0][2], db)
    # x

  end
end
