f=imread('D:\Work&Files\PSU-Course\EE455\Images\walkbridge.tif');
f8=f(:,:,1);
[m,n]=size(f8);
 
%Change the grey-scale resolution by using floor function
for x=1:m
    for y=1:n
        f7(x,y)=(floor((f8(x,y)-1)/2))*2;
    end
end
 
%In case of pixels which have grey-scale values bigger than expected
%maximum value, a filter is generated refering to the sample code "main.m"
for x = 1 : m
    for y = 1 : n
        if f7(x,y) > 253
            f7(x,y) = min(f7(x,y),254);
        else
            f7(x,y) = f7(x,y);
        end
    end
end
 
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
 
for x=1:m
    for y=1:n
        f5(x,y)=floor((f8(x,y))/8)*8;
    end
end
for x = 1 : m
    for y = 1 : n
        if f5(x,y) > 247
            f5(x,y) = min(f5(x,y),248);
        else
            f5(x,y) = f5(x,y);
        end
    end
end
 
for x=1:m
    for y=1:n
        f4(x,y)=floor((f8(x,y))/16)*16;
    end
end
for x = 1 : m
    for y = 1 : n
        if f5(x,y) > 239
            f4(x,y) = min(f4(x,y),240);
        else
            f4(x,y) = f4(x,y);
        end
    end
end
 
for x=1:m
    for y=1:n
        f3(x,y)=floor((f8(x,y))/32)*32;
    end
end
for x = 1 : m
    for y = 1 : n
        if f3(x,y) > 223
            f3(x,y) = min(f3(x,y),224);
        else
            f3(x,y) = f3(x,y);
        end
    end
end
 
for x=1:m
    for y=1:n
        f2(x,y)=floor((f8(x,y))/64)*64;
    end
end
for x = 1 : m
    for y = 1 : n
        if f2(x,y) > 191
            f2(x,y) = min(f2(x,y),192);
        else
            f2(x,y) = f2(x,y);
        end
    end
end
 
for x=1:m
    for y=1:n
        f1(x,y)=floor((f8(x,y))/128)*128;
    end
end
for x = 1 : m
    for y = 1 : n
        if f1(x,y) > 127
            f1(x,y) = min(f1(x,y),128);
        else
            f1(x,y) = f1(x,y);
        end
    end
end
 
imtool(f8)
imtool(f7)
imtool(f6)
imtool(f5)
imtool(f4)
imtool(f3)
imtool(f2)
imtool(f1)
 
imwrite(f8,'origin','gif');
imwrite(f7,'7bit','gif');
imwrite(f6,'6bit','gif');
imwrite(f5,'5bit','gif');
imwrite(f4,'4bit','gif');
imwrite(f3,'3bit','gif');
imwrite(f2,'2bit','gif');
imwrite(f1,'1bit','gif');
 
 


