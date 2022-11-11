class Brave
  #セッターは定義するもの　ゲッターは呼ぶもの


#	セッター
  def name=(name)
    @name = name
  end

  #ゲッター
  def name
    @name
  end
#	セッター
  def hp=(hp)
    @hp = hp
  end

  #ゲッター
  def hp
    @hp
  end
#	セッター
  def offense=(offense)
    @offense = offense
  end

  #ゲッター
  def offense
    @offense
  end
#	セッター
  def defense=(defense)
    @defense = defense
  end

  #ゲッター
  def defense
    @defense
  end

  brave = Brave.new

  puts "NAME : #{brave.name}"
  puts "HP : #{brave.hp}"
  puts "OFFENSE : #{brave.offense}"
  puts "DEFENSE : #{brave.defense}"

  #このように書くことでクオーテーションを省いて書くことが
  #puts <<~TEXT
  #NAME：#{brave.name}
  #HP：#{brave.hp}
  #OFFENSE：#{brave.offense}
  #DEFENSE：#{brave.defense}
  #TEXT

  # brave.name = "テリー"
  # brave.hp = 500
  # brave.offense = 150
  # brave.defense = 100

  #このように出力される
  #テリー
  #500
  #150
  #100

  puts brave.name
  puts brave.hp
  puts brave.offense
  puts brave.defense



end