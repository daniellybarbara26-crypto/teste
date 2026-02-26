function emq=emq_10ABB_3retas(a)
  global x_s y_x2 rt_1 rt_2 rt_3
  s1=1./(1+exp(-a(1)*(x_s-a(2))));
  s2=1./(1+exp(-a(3)*(x_s-a(4))));
  s3=(1-s1).*(1-s2);
  y1=rt_1(1)*x_s+rt_1(2);
  y2=rt_2(1)*x_s+rt_2(2);
  y3=rt_3(1)*x_s+rt_3(2);
  y=s1.*y2+s2.*y1+s3.*y3;
  Y=y_x2'-y;
  emq=Y*Y'/length(Y);


