function L = Legendremoment(p,m,n)
l = 0;
M = size(p,1) % returns the number of rows in p
N = size(p,2) % returns the number of coulmns in p
for i = 0:M-1
    for j = 0:N-1
        x = (2*i - (M-1))/(M-1);
        y = (2*j - (N-1))/(N-1);
        px = legendreP(m,x); % returns the mth degree legendre polynomial at x
        py = legendreP(n,y);
        l = l + p(i+1,j+1)*px*py;
    end
end
L = l*(2*m + 1)*(2*n + 1)/(M * N);