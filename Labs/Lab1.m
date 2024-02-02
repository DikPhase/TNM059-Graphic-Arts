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
b61 = mygrey(1:2:end, 1:2:end);
imwrite(b61, 'b61.png')
%%
bild = imread('Butterfly.tif');
bild = im2double(bild);
mygrey = (bild(:, :, 3/1));
b62 = samplaner(mygrey);
imwrite(b62, "b62.png");
%%
b63_nearest = imresize(b61, 2, "nearest");
b63_linear = imresize(b61, 2, "bilinear");
b63_cubic = imresize(b61, 2, "bicubic");

imwrite(b63_nearest, 'b63_nearest.png')
imwrite(b63_linear, 'b63_linear.png')
imwrite(b63_cubic, 'b63_cubic.png')
%%
mycolorimage = imread('Butterfly.tif');
mycolorimage = i§m2double(mycolorimage);
temp = imresize(mycolorimage, 0.5, "nearest");
b64 = imresize(temp, 2, "nearest");
imwrite(b64, "b64.png");
imwrite(mycolorimage, "mycolorimage.png");
%%
R = mycolorimage(:, :, 1);
G = mycolorimage(:, :, 2);
B = mycolorimage(:, :, 3);

R2 = imresize(R, 0.5, "nearest");
R2 = imresize(R2, 2, "nearest");
B2 = imresize(B, 0.5, "nearest");
B2 = imresize(B2, 2, "nearest");
b65 = cat(3, R2, G, B2);
imwrite(b65, "b65.png");
%%
G2 = imresize(G, 0.5, "nearest");
G2 = imresize(G2, 2, "nearest");
b67 = cat(3, R2, G2, B);
imwrite(b67, "b67.png");
%%
bild1 = R + G + B;
bild2 = R - G;
bild3 = R + G -2*B;

bild2 = imresize(bild2, 0.5, "nearest");
bild2 = imresize(bild2, 2, "nearest");
bild3 = imresize(bild3, 0.5, "nearest");
bild3 = imresize(bild3, 2, "nearest");

R3 = bild1/3 + bild2/2 + bild3/6;
G3 = bild1/3 - bild2/2 + bild3/6;
B3 = bild1/3 - bild3/3;

b68 = cat(3, R3, G3, B3);
imwrite(b68, "b68.png");












