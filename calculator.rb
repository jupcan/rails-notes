
def calc(num1,num2,op)
  test = {"+"=>num1+num2,"-"=>num1-num2,"*"=>num1 * num2,"/"=>num1/num2,"%"=>num1%num2}
  return test[op]
end

print "enter 1st number:"
num1=gets.chomp.to_f
print "enter 2nd number:"
num2=gets.chomp.to_f
print "enter operator:"
op=gets.chomp
puts calc(num1,num2,op)
