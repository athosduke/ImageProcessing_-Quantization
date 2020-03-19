f=imread('D:\Work&Files\PSU-Course\EE455\Images\walkbridge.tif');
f=f(:,:,1);
 
for x=1:m
    for y=1:n
        f6(x,y)=floor((f8(x,y))/4)*4;
    end
end
for x = 1 : m
    for y = 1 : n
        if f6(x,y) > 251
            f6(x,y) = min(f6(x,y),252);
        else
            f6(x,y) = f6(x,y);
        end
    end
end
 
f1=f6(1:2:end,1:2:end);
for x=1:512
    for y=1:512
        f2(x,y)=f1(ceil(x/2),ceil(y/2));
    end
end
 
imtool(f);
imtool(f2);
 
imwrite(f,'origin','gif');
imwrite(f2,'result','gif');


