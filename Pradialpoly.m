function rad = Pradialpoly(r,n,m)
% f = radialpoly(r,n,m)
% where
%   r = radius
%   n = the order of Zernike polynomial
%   m = the repetition of Zernike moment

rad = zeros(size(r));                     % Initilization
for s = 0:(n-abs(m))
  c = (-1)^s*factorial(2*n +1 -s)/(factorial(s)*factorial(n-abs(m)-s)*...
      factorial(n+abs(m)+1 - s));
  rad = rad + c*r.^(n-s);
end