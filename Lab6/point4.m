V=0:1:1000;
res=[];
for t=25:0.5:27
    u1=T1(t);
    u2=T2(t);
    u3=T3(t);
    uv1=u1*v1(V);
    uv2=u2*v2(V);
    uv3=u3*v3(V);
    mf=max(uv1,max(uv2,uv3));
    xCoA=defuzz(V,mf,'centroid');
    res=[res xCoA];
end
t=25:0.5:27;
t1=linspace(min(t),max(t));
res1=interp1(t,res,t1,'cubic');
plot(t1,res1,t,res,'*');
