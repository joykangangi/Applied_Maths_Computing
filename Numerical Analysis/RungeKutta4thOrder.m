 % Runge-Kutta(4th Order Algorithm)
 % Use Runge-Kutta Method to approximate the value of the solution Φ of
 % the Initial Value Problem: y' = y + 0.1xy² ;y(0) = 2. Find approximate to
 % Φ(x) at x=0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0 by using h = 0.1

 f= @(x,y) (y + (0.1*x*y^2));
 h = 0.1;
 a = input('Enter starting point, x0: '); %0
 b = input('Enter end point, xn: '); % 1
 n = input('Enter number of sub-intervals, n: '); %10
 y0 = input('Enter the initial condition, y0: '); %2
 x = a
 y = y0
 fprintf('  x           y\n');
 fprintf('%5.3f %11.7f\n', x,y);

 for i = 1:n
     k1 = h*f(x,y);
     k2 = h*f(x+h/2, y+k1/2);
     k3 = h*f(x+h/2, y+k2/2);
     k4 = h*f(x+h,y+k3);
     k = (k1 + 2*k2 + 2*k3 + k4)/6;
     y = y + k;
     x = a + i*h;
     fprintf('%5.3f %11.7f\n', x,y);
end
