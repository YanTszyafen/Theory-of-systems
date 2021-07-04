Z = inv(X.'*X)*(X.')*YY
a1 = -Z(1);
a2 = -Z(2);
b1 = Z(3);
b2 = Z(4);
A_ = [0 1;-a2 -a1];
B_ = [0;1];
C_ = [b2 b1];
D = [Z(4) Z(3);Z(3)*Z(2) Z(3)*Z(1)+Z(4)];
x0_ = inv(D)*[y(1);y(2)];
y_ = [];
T = 0.1;
%Ad = expm(A_*T);
%[M,N] = size(Ad);
%I = eye(M,N);
%Bd = inv(A_)*(Ad-I)*B_;
for k=1:1:100
    y_(k) = C_*x0_;
    x0_ = A_*x0_+B_*sin(2*k/10);
end
k_=1:1:100;
stem(k_,y_);
