a = 5;
a/4;
b = uint8(a);
b/4;
b/12;

%%
k = imread('kvarn.tif');
whos k;
k2 = double(k);
whos k2;
%imshow(k)
imshow(k2)

%imshow(k/255)
%imshow(k2/255)

%%
map = ([1 0 0; 0 1 1; 0.5 0.2 0.3; 1 0 0.6])
image([1, 2; 3, 4])
colormap(map)

map2 = ([1 0 0; 0 1 1; 0.5 0.2 0.3; 1 0 0.6]);
image([1, 2, 3, 4]);
colormap(map2)
%%
map = ([1 1 0; 1 0 0; 0 1 1; 0.7 0.7 0.7; 1 0 1; 0.3 0.3 0.3]);
image([1, 2, 3; 4, 5, 6]);
colormap(map);

%%
N=[1 2 3; 
   4 5 6; 
   7 8 9; 
   10 11 12; 
   13 14 15];
N(1:3:end, 1)
N(1:3:end,:)