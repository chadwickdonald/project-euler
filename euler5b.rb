# author: jamesleonis

flag,num = [true,0]
while (flag) do
  num += 2520
  (11..20).each { |mod| break if (flag = (num.modulo(mod) != 0)) }	
end
p num

