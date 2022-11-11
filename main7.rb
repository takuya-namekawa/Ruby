class Brave
  attr_reader :name, :hp, :offense, :defense  #ゲッターの定義
  attr_accessor :hp   #セッターゲッターを一括定義

  def initialize(**params)
     # 各パラメータをハッシュで取得
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(monster)
    puts "テスト : #{monster.name}のHPを表示 -> #{monster.hp}"
  end

end



class Monster
  # 値の取り出しのみ可能
  attr_reader :name, :hp, :offense, :defense
   # 値の代入・取り出しが可能
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


#実行結果
#テスト : スライムのHPを表示 -> 250