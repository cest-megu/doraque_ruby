class Brave < Character
  # ゆうしゃの攻撃
  # ゆうしゃをインスタンス変数、モンスターをローカル変数としてつかう
  def attack_monster(monster)

    monster_damage = @offense - monster.defense/2

    puts <<~TEXT
    #{@name}の攻撃！
    #{monster.name}に#{monster_damage}のダメージを与えた！
    TEXT
    #モンスターのHPはダメージ分減る、HPが0の時終了
    if monster.hp > monster_damage then
      monster.hp -= monster_damage
    else
      monster.hp = 0
    end
  end
end
