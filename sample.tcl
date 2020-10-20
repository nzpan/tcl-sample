#!/usr/bin/env tclsh

set str "hoge"
puts $str

# list
puts "hoge sumo foo"
puts {hoge sumo foo}
set list_a [list 1 2 3]
puts "list_a: $list_a"
# listの要素数は？
puts "要素数: [llength $list_a]"
# 要素を取り出す
puts "list_a index 1:[lindex $list_a 1]"
# listをiterateするには？
foreach i $list_a {
  puts "foreach: $i"
}
# listを変更する。変更するのではなく、変更したlistを返す。元のlistは変わらないので注意。
lreplace $list_a 1 2 7 8
puts "lreplace: [lreplace $list_a 1 2 7 8]"
puts "list_a: $list_a"
# listから要素をremoveするコマンドは無い？
# lreplaceを使うらしい
lreplace $list_a 1 1
puts "lreplace remove: [lreplace $list_a 1 1]"
puts "list_a: $list_a"

# hashは？
# 配列変数 というのがある

# condition
set cond 1
if $cond {
  puts "if: ture"
} else {
  puts "if: false"
}

set cnt 3
while {$cnt > 0} {
  puts "while clause: $cnt"
# incr $cntじゃないので注意！
  incr cnt -1
}

# 関数
proc cal {a b c} {
  return [expr ($a+$b)*$c]
}
puts "proc: [cal 1 2 3]"

# コマンド置換
puts [expr 1+2]

# リファレンスは？
# アドレス渡し
proc cal {a b c answer} {
 upvar $answer ans
 set ans [expr ($a+$b)*$c]
}

# application examples
# sum
set list_b [list 1 2 3 4 5 6 7 8 9 10]
puts "sum: [eval "expr" [join $list_b +]]"

exit


