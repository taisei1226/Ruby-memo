require "csv"  

puts "1(新規でメモを作成)2(既存のメモを編集する)"

memo_type = gets.to_s
memo_number = memo_type.chomp

if memo_number == "1"
	puts "拡張子を除いたファイル名を入力してください。"
	memo_file = gets.chomp

	puts"内容を記入して下さい。Ctrl+Dで保存します。"
	imput_memo = STDIN.read
	memo = imput_memo.chomp

	CSV.open("#{memo_file}.csv" , "w") do |csv|
	csv.puts ["#{memo}"]
 end
elsif memo_number == "2"
	puts "拡張子を除いた既存ファイル名を入力してください。"
	file_name = gets.chomp
	puts "内容を記入してください。Ctrl+Dで保存します。"
	imput_memo = STDIN.read
	memo = imput_memo.chomp

	CSV.open("#{file_name}.csv","a") do |csv|
	csv.puts ["#{memo}"]
 end
else
	puts "1または2を入力してください"
end
