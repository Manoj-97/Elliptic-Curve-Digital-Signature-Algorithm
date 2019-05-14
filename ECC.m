% Suppose we are working on the elliptic curve y^2 = x^3 + Ax + B
% Define P1 = (x1,y1)
% P2 = (x2,y2)
% Then P1 + P2 = P3 = (x3,y3) is defined as below
% If one if the variables in infinity then we define P + infinity = P
% The user should type in ’infinity’ for both the x and y values.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if x1==’infinity’
x3=x2; y3=y2;
return
end
if x2==’infinity’
x3=x1; y3=y1;
return
end
if x1==x2
if y1==y2
if y1==0
display(’P3 is infinity’)
x3=’infinty’;, y3=’infinity’;
return
end
m = sym( (3*(x1)^2 + A)/(2*(y1)) );
162
x3 = sym( m^2 - x1 - x2);
y3 = sym( m*(x1 - x3) - y1 );
return
end
display(’P3 is infinity’)
x3=’infinty’;, y3=’infinity’;
return
end
m = sym( (y2-y1)/(x2-x1) );
x3 = sym( m^2 - x1 - x2 );
y3 = sym( m*(x1 - x3) - y1 );
