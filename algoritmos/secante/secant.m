
function p2 = secant(f,p0,p1,delta,maxI)
  err=inf;

  for k=1:maxI
    yp0=feval(f,p0);
    yp1=feval(f,p1);
    p2=p1-(yp1*(p0-p1))/(yp0-yp1);
    err=abs((p1-p0)/p1;)
    p0=p1;
    p1=p2;

    if err<delta
      break
    end

  endfor
endfunction
