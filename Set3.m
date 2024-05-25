for ii=size(a,2)
    if mod(a(ii),3)==0
    a(ii)=[]
    end
end  %At the starting point, the size of the vector is certain and
%and the loop is gonna carry out the command for a definite number of iterations but 
%as the loop starts executing the size of the vector gets smaller and
%smaller
while c<=13
    i=1
    while i>0
        c=c+1
        if mod(a(i),3)==0
            a(i)=[]
            break
        else 
            i=i+1
        end
    end
end
n=%delkhah
a=[0:n-1]
b=a.^2