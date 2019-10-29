a=input('Enter the function in term of x : ','s');
f=inline(a);
 
xl=input('Enter the first point:') ;
xu=input('Enter the end point:');
tol=input('Enter the allowed error:');
 
if f(xu)*f(xl)<0
else
    fprintf('The guess is incorrect! Enter new guesses\n');
    xl=input('Enter the first point:') ;
    xu=input('Enter the end point:');
end
 
for i=2:100
xr=(xu+xl)/2;
if f(xu)*f(xr)<0
    xl=xr;
else
    xu=xr;
end
 
if f(xl)*f(xr)<0
    xu=xr;
else
    xl=xr;
end
 
xnew(1)=0;
xnew(i)=xr;
if abs((xnew(i)-xnew(i-1))/xnew(i))<tol,break,end
end
str = ['The required root of the equation is: ', num2str(xr), '']