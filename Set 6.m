%%% first question
function out=reversestring(string)
out=string(end:-1:1);



%%%%% second question
x=[1 2 3;4 5 6;7 8 9];
t=[];
for i=1:size(x,1)
    c=[];
    for j=1:size(x,2)
        c=[c x(i,j)]; 
    end
    t=[t c(:)];
end
disp(t)



%%%% third question
x=-2*pi:0.1:2*pi;
y=-2*pi:0.1:2*pi;

[X Y]=meshgrid(x,y);
f=sin(X).*cos(Y);
figure
surf(X,Y,f)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Function')




%%%% fourth question
matrix=[randi([-10 10],3,3)];
boolmat=matrix
for i=1:size(matrix,1)
    for j=1:size(matrix,2)
        if matrix(i,j)>0
            boolmat(i,j)=true;
        else
            boolmat(i,j)=false;
        end
    end
end
disp(boolmat)




%%%% fifth question 
matrix=randi([1 10],3,3);
mean=sum(matrix(:))/9;
newmat=zeros(3);
for i=1:size(matrix,1)
    for j=1:size(matrix,2)
        if matrix(i,j)>=mean
        newmat(i,j)=matrix(i,j);
        end
    end
end
disp(newmat)




%%%%%%%% last question
x=-2:0.1:2;
y=-2:0.1:2;
[X Y]=meshgrid(x,y);
figure
subplot(2,2,1);
z1=X.^2-Y.^2;
surf(X,Y,z1)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Saddle Function')
grid on
subplot(2,2,2)
z2=((1-X).^2)+100*(Y-X.^2).^2;
surf(X,Y,z2)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Rosenbrock Function')
grid on
subplot(2,2,3)
z3=X.^2+Y.^2;
surf(X,Y,z3)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Elliptic Paraboloid')
grid on
subplot(2,2,4)
z4=exp(-X.^2-Y.^2);
surf(X,Y,z4)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Elliptic Paraboloid')
grid on