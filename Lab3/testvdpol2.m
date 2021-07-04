tspan=0:0.1:10;
[t,x] = ode45(@vdpol2,tspan,[0;0]);
y=x*[2;4];
plot(t,y,'-o');

Y=[];
fid=fopen('Yfile.txt','wt');
for k=1:1:100
    Y=[Y,y(k+1)];
    fprintf(fid,'%f;\t',y(k+1));
end
fclose(fid);
YY = Y.';
T = 0.1;
fid=fopen('Xfile.txt','wt');
for k=1:1:100
    X(k,1)= y(k);
    if k==1
        X(k,2)= 0;
    else
        X(k,2)= y(k-1);
    end
    X(k,3)= sin(2*(k*T-T));
    X(k,4)= sin(2*(k*T-2*T));
end
for k=1:1:100
    for i=1:1:4
        fprintf(fid,'%f\t',X(k,i));
    end
    fprintf(fid,';\n');
end
fclose(fid);
    
