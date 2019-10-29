funcion1 = input('Type the function f(x): ', 's');
	fprim = inline(funcion1);
funcion2=input('Type the derived of the function: ','s');
	fprim2=inline(funcion2);
	
Xo=input('Type the aproximated value to the root: ');
tol=input('Type the tolerance: ');
Yo=fprim(Xo);
	Y1=fprim2(Xo);
	error=tol+1;

while error>tol && Y1~=0
	Xm=Xo-(Yo/Y1);
	error=abs(Xm-Xo);
	Yo=fprim(Xm);
	Y1=fprim2(Xm);
	Xo=Xm;
	
endwhile

	if Yo==0;
	fprintf('%g is a root of the function',Xo);
		elseif error<tol;
		fprintf('%.10f is an aproximation to the root of the function \n with a tolerance of %10e \n', Xo,tol);
		 	elseif Y1==0
			fprintf('There is a division by zero')
	endif

