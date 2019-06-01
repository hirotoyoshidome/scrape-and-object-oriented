# encoding: UTF-8

# モジュールファイルを外部ファイルとして読み込み場合requireでファイル名を設定する必要あり
# また、使用する場合はincludeで指定する必要あり


# モジュール名もクラスと同じ命名規則
module SampleModule
  # モジュールのメソッドを定義する
  def print_border_age
    puts '成人のボーダーラインは20さい'
  end

  # モジュールの関数を定義する
  module_function :print_border_age
end

puts SampleModule.print_border_age
