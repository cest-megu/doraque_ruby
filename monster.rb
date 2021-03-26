class Monster < Character
  # モンスターの攻撃
  # モンスターをインスタンス変数で、ゆうしゃをローカル変数として使う
  def attack_brave(brave)
    brave_damage = @offense - brave.defense/2
    puts <<~TEXT
    #{@name}の攻撃！
    #{brave.name}は#{brave_damage}のダメージを受けた！
    TEXT
    # ゆうしゃのHPはダメージ分減る,HPが0の時終了
    if brave.hp > brave_damage
      brave.hp -= brave_damage
    else
      brave.hp = 0
    end
  end
end
