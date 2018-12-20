n = 4; m = 2;           % The order and the repetition of the moment
disp(['Calculating Legendre moments for n = ' num2str(n) ', m = ' num2str(m)]);

img = imread('Oval_H.png');%image 1
p = im2bw(img,0.5)
figure(1);subplot(2,3,1);imshow(p);
title('Horizontal Oval');
p = logical(not(p));
tic
L = Legendremoment(p,m,n);  % Call Legendremoment fuction
Elapsed_time = toc;
xlabel(['L = ' num2str(L)]);

img = imread('Oval_45.png');%image 1 rotated
p = im2bw(img,0.5)
figure(1);subplot(2,3,2);imshow(p);
title('-45 Oval');
p = logical(not(p));
tic
L = Legendremoment(p,m,n);  % Call Legendremoment fuction
Elapsed_time = toc;
xlabel(['L = ' num2str(L)]);

img = imread('Oval_V.png');%image 1 rotated
p = im2bw(img,0.5)
figure(1);subplot(2,3,3);imshow(p);
title('Vertical Oval');
p = logical(not(p));
tic
L = Legendremoment(p,m,n);  % Call Legendremoment fuction
Elapsed_time = toc;
xlabel(['L = ' num2str(L)]);

img = imread('shape_0.png');%image 2
p = im2bw(img,0.5)
figure(1);subplot(2,3,4);imshow(p);
title('Horizontal shape');
p = logical(not(p));
tic
L = Legendremoment(p,m,n);  % Call Legendremoment fuction
Elapsed_time = toc;
xlabel(['L = ' num2str(L)]);

img = imread('shape_90.png');%image 2 rotated
p = im2bw(img,0.5)
figure(1);subplot(2,3,5);imshow(p);
title('Vertical Shape');
p = logical(not(p));
tic
L = Legendremoment(p,m,n);  % Call Legendremoment fuction
Elapsed_time = toc;
xlabel(['L = ' num2str(L)]);

img = imread('Rectangular_H.png');%image 3
p = im2bw(img,0.5)
figure(1);subplot(2,3,6);imshow(p);
title('Horizontal Reactangle');
p = logical(not(p));
tic
L = Legendremoment(p,m,n);  % Call Legendremoment fuction
Elapsed_time = toc;
xlabel(['L = ' num2str(L)]);

% show the elapsed time
disp('Calculation is complete.');
disp(['The elapsed time per image is ' num2str(Elapsed_time) ' seconds']);

