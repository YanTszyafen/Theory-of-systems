function u=v3(V)
u=1.*(V>=0 & V<=200)+(-0.005*V+2).*(V>200 & V<=400)+0.*(V>400);
end