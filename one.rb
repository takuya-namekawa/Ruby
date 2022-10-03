puts 1 + 2
puts 2 - 1
puts 2 * 3
puts 4 / 2
puts 1 + 2 + 3
puts 1 + 2 * 3
puts (1 + 2) * 3
puts 5 / 2  #ルビーはあまりを計算する際は少数点は切り捨てられる
puts 5.0 / 2.0  #少数点以下を記述すれば出してくれる
puts 2 ** 8  #累乗　2の8乗
puts 7 %  3 #剰余　7を3で割った余り
puts 3 + "3".to_i #文字列を数値に変換する
puts 3.to_s + "3"#数値を文字に変換
# 1 2 100 整数オブジェクト  Integerクラス
# 2.0 5.9 3.14  少数オブジェクト　　Floatクラス
# "カフェラテ"　"h1" #文字列オブゲクト　Stringクラス
order = "カフェラテ"
puts order
puts "ご注文は" + order + "ですね?"
puts order + "、オーダー入ります"
#{計算式} 式展開の記法
puts "1 + 2の答えは#{1 + 2}です"
order = "コーヒー"
puts "ご中温は#{order}ですね?"
puts "#{order} オーダー入ります"
x = gets
y = gets 
puts x.to_i + y.to_i