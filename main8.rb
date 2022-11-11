class Brave
  attr_reader :name, :hp, :offense, :defense
  attr_accessor :hp

  def initialize(**params)

    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(monster)
  # @offense：勇者インスタンスの攻撃力
  # monster.defense：モンスターインスタンスの防御力
    damage = @offense - monster.defense
  # モンスターのHPから計算したダメージを引く
  #  puts monster.hp - damage
    monster.hp = monster.hp - damage

  #上記記述をリファクタリングすると以下記述
    #monster.hp -= damage
    puts "#{@name}の攻撃"
    puts "#{monster.name}は#{damage}のダメージを受けた"
    puts "#{monster.name}の残りHPは#{monster.hp}だ"

  end

end



class Monster
  attr_reader :name, :hp, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name  = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]

  end



end

brave = Brave.new(name: "テリー",hp: 500,offense: 150,defense: 100)
monster = Monster.new(name: "スライム", hp: 250, offense: 200, defense: 100)
brave.attack(monster)


