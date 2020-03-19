f=imread('D:\Work&Files\PSU-Course\EE455\Images\walkbridge.tif');
f=f(:,:,1);
%Get the first layer of the tif image
 
%Then downsample the 512*512 image, and perform the nearest neightbour
%interpolation
f1=f(1:2:end,1:2:end);
for x=1:512
    for y=1:512
        f2(x,y)=f1(ceil(x/2),ceil(y/2));
    end
end
 
 
f1=f(1:4:end,1:4:end);
for x=1:512
    for y=1:512
        f4(x,y)=f1(ceil(x/4),ceil(y/4));
    end
end
 
f1=f(1:16:end,1:16:end);
for x=1:512
    for y=1:512
        f16(x,y)=f1(ceil(x/16),ceil(y/16));
    end
end
 
imtool(f2);
imtool(f4);
imtool(f16);
 
imwrite(f2,'256','tif');
imwrite(f4,'128','tif');
imwrite(f16,'32','tif');
 
 


