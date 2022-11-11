class Brave
  # paramsで一括で受け取る
# 引数に**を記述：ハッシュしか受け取れなくなる
  def initialize(**params)
     # 各パラメータをハッシュで取得
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def name
    @name
  end

  def hp
    @hp
  end

  def offense
    @offense
  end

  def defense
    @defense
  end

end
#キーワード引数
brave = Brave.new(name: "テリー",hp: 500,offense: 150,defense: 100)

puts <<~TEXT
NAME : #{brave.name}
HP : #{brave.hp}
OFFENSE : #{brave.offense}
DEFENSE : #{brave.defense}
TEXT