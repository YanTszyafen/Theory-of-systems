T = 0.1;
A = [0 1;-4 -3];
B = [0;1];
C = [2 4];
Ad = expm(A*T);
[M,N] = size(Ad);
I = eye(M,N);
Bd = A^(-1)*(Ad-I)*B;
y = [];
x0=[0;0];
for k=1:1:100
    x0 = Ad*x0+Bd*sin(2*k/10);
    y(k) = C*x0;
end
k_=1:1:100;
stem(k_,y);