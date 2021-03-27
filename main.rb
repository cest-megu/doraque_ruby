
# 他ファイル参照
require './character'
require './brave'
require './monster'

# モンスターをランダムに登場させる
monster_random = [
  {name:  "アークデーモン", hp: 210, offense: 140, defense: 80},
  {name: "シドー", hp: 250, offense: 255, defense: 255}
]

# ゆうしゃとモンスターの初期ステータス
brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(monster_random.sample)

# モンスターの出現
puts "#{monster.name}があらわれた！"

loop do
  # ゆうしゃ→モンスターの攻撃
      brave.attack_monster(monster)
  # モンスター→ゆうしゃの攻撃（モンスターのHPが0より大きい時）
      monster.attack_brave(brave) if monster.hp > 0

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
  else monster.hp == 0
    puts "#{monster.name} をやっつけた！"
  end
