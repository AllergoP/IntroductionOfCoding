function bin = binlize(Data,L)
%OnesComplement 将数字转为其二进制表示，返回01数组，大端在前
%若二进制长度不足L，则从左端开始补到L
if rem(Data,1)~=0 || Data<0
    error("输入的数据无法转换为二进制。")
end
temp = floor(log2(Data))+1;
bin = zeros(1,temp);
while temp>0
    bin(temp) = mod(Data,2);
    Data = floor(Data/2);
    temp = temp-1;
end
temp = L-length(bin);
if temp>0
    temp = zeros(1,temp);
    bin = [temp,bin];
end
end

