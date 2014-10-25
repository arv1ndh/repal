format bank
n=input('enter no of years: ');
c=input('enter the original cost: ');
r=input('enter resale value: ');
m=input('enter maintennance cost ');
p=zeros(1,n);
temp=zeros(1,n);
t=zeros(1,n);
avg=zeros(1,n);
cm=c*ones(n);
cv=cm(1,:);
if(find(r)==1)
    rm=r*ones(n);
    rv=rm(1,:);
end
p = cv - rv;
for i=1:n
  temp(i) = sum(m(1:i));
  t(i)=p(i)+temp(i);
  avg(i)=t(i)/i;
end
s=sprintf('machine can be replaced after %d years',find(avg==min(avg)));
disp(s);