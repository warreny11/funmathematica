
seldata = rocketdata(910:2182,1);
timedata = [910:2182];
time = timedata/200;
B = -13.0229728;
C = 25.15685885;
accmeas = (seldata-B)/C;
acc = accmeas-9.8;

vel = cumtrapz(time,acc);

%[m,i] = min(abs(seldata))
i = 111;

acc(1:i) = cos(pi/13.58)*acc(1:i);


velsel = cumtrapz(time,acc);
possel = cumtrapz(time,velsel);

%figure 
%plot(acc,".--")

figure
plot(time,velsel,".--")
figure
plot(time,possel,".--")
figure
plot(time,acc,".--")


acc(i:1273)=-acc(i:1273);
vel = cumtrapz(time,acc);
pos = cumtrapz(time,vel);



%figure
%plot(time,pos)
%plot(time,vel)
%figure
%plot(time,acc)
%figure 
%plot(time,seldata)


