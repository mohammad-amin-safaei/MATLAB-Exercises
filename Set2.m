%1
B=[2:2:15;15:5:49;54:3:73]
d=ndims(B)
s=size(B)
%showing number 66
B(15)
B(3,5)
B1=B(end:-1:1,:)
B2=B(:,end:-1:1)
z=[B1 B2] % number of columns increases
z=[B1;B2]%number of rows increases
ndims(z)
size(z)
mean(z)
mean(z,"all")



%2
x=0:0.01:10

for c=[1;1.1;1.4;0.3]
    y=(1-x.^2).^c
    figure
    plot(x,y)
end

%3
[0 0 1;0 1 0;1 1 0;1 1 0]