# require "pry"

# 他ファイル参照
require './character'
require './brave'
require './monster'

# ゆうしゃとモンスターの初期ステータス
brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)

# モンスターの出現
puts "#{monster.name}があらわれた！"

# binding.pry
loop do
  # ゆうしゃ→モンスターの攻撃
  brave.attack_monster(monster)
  # モンスター→ゆうしゃの攻撃
  monster.attack_brave(brave)

  # HPの表示
  puts <<~TEXT
  *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
  TEXT

  # ループの終了
  break if brave.hp == 0 || monster.hp == 0
end

  # ゆうしゃのHPが0の時の表示
  if brave.hp == 0
    puts "#{brave.name} はしんでしまった!"
  # モンスターのHPが0の時の表示
  elsif monster.hp == 0
    puts "#{monster.name} をやっつけた！"
  end
