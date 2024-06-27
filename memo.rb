require "csv" 

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp
    puts "メモを入力してください。Ctrl + Dで保存します。"
    contents = STDIN.read.chomp
    memo_content = contents
    CSV.open("#{file_name}.csv", "w") do |csv|
    csv << [memo_content]
    puts "#{file_name}に保存されました"
end
elsif memo_type == 2
    puts "既存のメモを編集します。編集したいファイル名を入力してください"
    file_name = gets.chomp
    puts "メモを入力してください。Ctrl + Dで保存します。"
    contents = STDIN.read.chomp
    memo_content = contents
    CSV.open("#{file_name}.csv", "a") do |csv|
    csv << [memo_content]
    puts "#{file_name}に保存されました"
end
else 
    puts "1か2を入力してください"
end
