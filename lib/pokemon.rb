class Pokemon
  attr_reader :id, :name, :type, :db

  # dont understand these keyword
  def initialize(id:, name:, type:, db:)
    # @id = id
    # @name = name
    # @type = type
    # @db = db
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

  def self.find(id, db)
    # from = db.execute("select * from pokemon where id = #{id}")
    # p from
    # use indexes?

    # expected 0 ?? dont think i was getting that error b4
    # self.new(from[0], from[1], from[2], db)
    # x = self.new(from[0], from[1], from[2], db)
    # # binding.pry
    # x

  end
end
