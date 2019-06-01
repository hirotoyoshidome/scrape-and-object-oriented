# encoding: UTF-8

class Util
  def initialize
  end

  # メソッド定義の先頭にクラス名を指定することでstaticとなる
  def Util.add_num(num1, num2)
    num1 + num2
  end

  def Util.sub_num(num1, num2)
    num1 - num2
  end
  private
end

p Util.add_num(1, 2) # 3を出力

p Util.sub_num(4, 2) # 2を出力
