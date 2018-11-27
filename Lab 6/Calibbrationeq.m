upm = mean(uprkt(:,2));
dm = mean(drkt(:,2));

syms B C
eqn1 = upm == 9.8*C + B;
eqn2 = dm == -9.8*C + B;
sol = solve([eqn1,eqn2],[B,C]);

solB = sol.B
solC = sol.C
