class Brave
#initializeメソッドの中でインスタンス変数に値を設定する処理を書くと、new演算子を使ってインスタンスを作成したときに、自動的に各インスタンス変数に値を設定してくれます。
  def initialize
    @name = "テリー"
    @hp = 500
    @offense = 150
    @defense = 100
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

brave = Brave.new

puts <<~TEXT
NAME : #{brave.name}
HP : #{brave.hp}
OFFENSE : #{brave.offense}
DEFENSE : #{brave.defense}
TEXT