class Brave
  attr_reader :name, :hp, :offense, :defense
  attr_accessor :hp
# 必殺攻撃の計算に使う定数
  SPECIAL_ATTACK_CONSTANT = 1.5

  def initialize(**params)

    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(monster)
    puts "#{@name}の攻撃"

    attack_num = rand(4)

    if attack_num == 0
      puts "必殺攻撃"
       # calculate_special_attackの呼び出し
      # 攻撃力の1.5倍の数値が戻り値として返ってくる
      damage = calculate_special_attack - monster.defense
    else
      puts "通常攻撃"
      damage = @offense - monster.defense
    end


    monster.hp -= damage

    puts "#{monster.name}は#{damage}のダメージを受けた"
    puts "#{monster.name}の残りHPは#{monster.hp}だ"
  end

  def calculate_special_attack
    
    @offense * SPECIAL_ATTACK_CONSTANT
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


