#
require 'open-uri'
require 'json'
require 'awesome_print'

page =open("http://www.nlotto.co.kr/common.do?method=getLottoNumber")
lotto_read=page.read

lotto_json=JSON.parse(lotto_read)
puts lotto_json
#일단 파싱해옴

puts "aaaaaaaaaaaaaaaaaaaaaaaaa"

#
numbers=[1,2,3,4,5,6,7,8,9,10,
        11,12,13,14,15,16,17,18,19,20,
        21,22,23,24,25,26,27,28,29,30,
        31,32,33,34,35,36,37,38,39,40,
        41,42,43,44,45]
lotto_numbers = numbers.sample(6).sort
puts lotto_numbers
#일단 6자리 랜덤숫자 뽑고 도출

#        



puts "aaaaaaaaaaaaaaaaaaaaaaaaa"

#
select_number1=0
if lotto_numbers[0]==lotto_json["drwtNo1"]
select_number1+=1
elsif lotto_numbers[0]==lotto_json["drwtNo2"]
select_number1+=1
elsif lotto_numbers[0]==lotto_json["drwtNo3"]
select_number1+=1
elsif lotto_numbers[0]==lotto_json["drwtNo4"]
select_number1+=1
elsif lotto_numbers[0]==lotto_json["drwtNo5"]
select_number1+=1
elsif lotto_numbers[0]==lotto_json["drwtNo6"]
select_number1+=1
else
end
puts select_number1

select_number2=0
if lotto_numbers[1]==lotto_json["drwtNo1"]
select_number2+=1
elsif lotto_numbers[1]==lotto_json["drwtNo2"]
select_number2+=1
elsif lotto_numbers[1]==lotto_json["drwtNo3"]
select_number2+=1
elsif lotto_numbers[1]==lotto_json["drwtNo4"]
select_number2+=1
elsif lotto_numbers[1]==lotto_json["drwtNo5"]
select_number2+=1
elsif lotto_numbers[1]==lotto_json["drwtNo6"]
select_number2+=1
else
end
puts select_number2

select_number3=0
if lotto_numbers[2]==lotto_json["drwtNo1"]
select_number3+=1
elsif lotto_numbers[2]==lotto_json["drwtNo2"]
select_number3+=1
elsif lotto_numbers[2]==lotto_json["drwtNo3"]
select_number3+=1
elsif lotto_numbers[2]==lotto_json["drwtNo4"]
select_number3+=1
elsif lotto_numbers[2]==lotto_json["drwtNo5"]
select_number3+=1
elsif lotto_numbers[2]==lotto_json["drwtNo6"]
select_number3+=1
else
end
puts select_number3

select_number4=0
if lotto_numbers[3]==lotto_json["drwtNo1"]
select_number4+=1
elsif lotto_numbers[3]==lotto_json["drwtNo2"]
select_number4+=1
elsif lotto_numbers[3]==lotto_json["drwtNo3"]
select_number4+=1
elsif lotto_numbers[3]==lotto_json["drwtNo4"]
select_number4+=1
elsif lotto_numbers[3]==lotto_json["drwtNo5"]
select_number4+=1
elsif lotto_numbers[3]==lotto_json["drwtNo6"]
select_number4+=1
else
end
puts select_number4

select_number5=0
if lotto_numbers[4]==lotto_json["drwtNo1"]
select_number5+=1
elsif lotto_numbers[4]==lotto_json["drwtNo2"]
select_number5+=1
elsif lotto_numbers[4]==lotto_json["drwtNo3"]
select_number5+=1
elsif lotto_numbers[4]==lotto_json["drwtNo4"]
select_number5+=1
elsif lotto_numbers[4]==lotto_json["drwtNo5"]
select_number5+=1
elsif lotto_numbers[4]==lotto_json["drwtNo6"]
select_number5+=1
else
end
puts select_number5

select_number6=0
if lotto_numbers[5]==lotto_json["drwtNo1"]
select_number6+=1
elsif lotto_numbers[5]==lotto_json["drwtNo2"]
select_number6+=1
elsif lotto_numbers[5]==lotto_json["drwtNo3"]
select_number6+=1
elsif lotto_numbers[5]==lotto_json["drwtNo4"]
select_number6+=1
elsif lotto_numbers[5]==lotto_json["drwtNo5"]
select_number6+=1
elsif lotto_numbers[5]==lotto_json["drwtNo6"]
select_number6+=1
else
end
puts select_number6
# 랜덤 6개 숫자와 지난 회차로또번호 비교

puts "aaaaaaaaaaaaaaaaaaaaaaaaa"

#
number_of_selection=select_number1+select_number2+select_number3+select_number4+select_number5+select_number6
puts "맞은 번호 갯수는 #{number_of_selection} 개이고,"

# 총 몇개가 맞았는지 보여주고,

if number_of_selection==0
    puts "맞는게 하나도 없습니다."
    elsif number_of_selection==1
    puts "6등입니다."
    elsif number_of_selection==2
    puts "5등입니다."
    elsif number_of_selection==3
    puts "4등입니다."
    elsif number_of_selection==4
    puts "3등입니다."
    elsif number_of_selection==5
    puts "2등입니다."
    elsif number_of_selection==6
    puts "1등입니다."
else
end

#몇 등인지 보여준다.

#로또를 해본적이 없어 뭐가 1등인지 모릅니다... 보너스숫자 제외ㅠㅠ
