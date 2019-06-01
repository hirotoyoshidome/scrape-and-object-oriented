# encoding: UTF-8

# 作成したUtilクラスを読み込み
require './src/util'

# ファイル名はスネークケースで記述しすべて小文字で設定する
# クラス名はキャメルケースの先頭は大文字で設定する(HTML, APIなどの略語はすべて大文字で表現する)
# コメントを使用してRDocを作成可能
class Sample
  # 変数名もスネークケースの小文字で設定する
  age = 21 # 未使用変数

  # 定数はすべて大文字で単語の区切りは_で行う
  ADULT_AGE = 20

  # 初期化メソッド
  def initialize(age = 0) # デフォルトを設定
    # @からはじまるものはインスタンス変数
    @my_age = age
  end

  # メソッド名もすべて小文字のスネークケース
  def get_my_age
    @my_age
  end

  def set_my_age(age)
    @my_age = age
  end

  # 破壊的なメソッドは非破壊的なメソッドと一緒に準備すること
  def get_my_age!
    @my_age
  end

  # ブール値を返すメソッドは?記号をメソッドに付与する
  def is_adult_age?
    if(@my_age > ADULT_AGE)
      true
    else
      false
    end
  end
end


# javaでいうmainメソッドは存在しないためクラスの外で記述した内容が実行される
s = Sample.new(21)
ago = 20
p s.get_my_age.to_s + '歳'# 21が出力
if(s.is_adult_age?)
  puts 'せいじん'
else
  puts 'こびと'
end
s.set_my_age(ago + s.get_my_age)
puts ago.to_s + '年後の年齢は'
p s.get_my_age.to_s + '歳'

# ほかのクラスのメソッドを使用する(static呼び出し)
# ほかのファイルを読み込む場合はrequireが必要(uninitialize errorは読み込めていないエラー)
p Util.add_num(2, 2)
