class Brave
  # attr_readerの記述でゲッターを省略することができる
  #attr_reader :name
  #attr_reader :hp
  #attr_reader :offense
  #attr_reader :defense
   # 複数の値を同時に指定することができる書き方
  attr_reader :name, :hp, :offense, :defense  #ゲッターの定義
  attr_accessor :hp   #セッターゲッターを一括定義

  def initialize(**params)
     # 各パラメータをハッシュで取得
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
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

brave.hp -= 30

puts "#{brave.name}はダメージを受けた! 残りHPは#{brave.hp}だ"



#アクセサメソッド	役割
#attr_reader	ゲッター
#attr_writer	セッター
#attr_accessor	ゲッター&セッター