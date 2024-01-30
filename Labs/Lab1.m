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
N(1:3:end, 1);
N(1:3:end,:);
%%
v1 = [1, 1, 1, 1];
v2 = [0.5, 0.25, 0, 0.25];
v3 = [0.25, 0.5, 0, 0.5, 1];
s1 = sum(v1 .* v2)
s2 = sum(v1 .* v3)
%%
m6=[1 2 3; 4 5 6; 7 8 9];
m7=[-2 3 1; 0 2 -7; 1 3 6];
u1 = m6>3;
u2 = (m6 > 3 & m7== -7);
u3 = (m6 > 3 | m7 == -7);
u4 = ((m6 + m7) >= 4 & m6 > 5);
%%
fargbild = imread('Butterfly.tif');
fargbild = im2double(fargbild);
imagesc(fargbild);
mygrey = (fargbild(:, :, 3/1));
imwrite(mygrey, 'mygrey.png');
%%
b61 = mygrey(1:2:end, 1:2:end)



