% Table Q5 shows the energy consumption of 5 house owners in kWh. By using
% for loop and logical vector (without if-else), calculate the amount that
% needs to be paid by each of them, if the rate of energy usage is as
% follows: First 200 kWh = RM 0.218 / kWh; Next 100 kVVh = RM 0.334 / kWh;
% the following kWh = RM 0.516 / kWh By using disp, display the amount each
% owner should pay as in the following format: "Amount to pay for<name> is
% RM <amount to pay>, with <tkal consumption kWh energy consumption". For
% example, if the total ALI needs to pay is RM500, then the display should
% be: Amount to pay for ALI is RM 500, with 520 kWh energy consumption Ali
% (520KWh);Ahmad (230KWh);ABU (150KWh);MAMAT (310KWh);FULAN (70KWh);

clc
clear all
close all
owner = [ "ALI" ,"AHMED", "ABU", "MAMAT", "FULAN" ];
consumption = [ 520 ,230 ,150, 310 , 70 ];
n=length(owner);
for i = 1:n
bill1 = (consumption(i) < 200)*consumption(i)*0.218;
bill2 = (consumption(i) > 200 && consumption(i) < 300)*(200*0.218 + (consumption(i)-200)*0.334 );
bill3 = (consumption(i) > 300)*(200 * 0.218 + 100 * 0.334  +  ( consumption(i)-300)* 0.516 ) ;
elecbill = bill1 + bill2 + bill3;
disp(['Amount to pay for ',char(owner(i)),' is RM ',num2str(elecbill)]);
end