function c = bisect (f,a,b,maxI,delta)
  ya=feval(f,a);
  yb=feval(f,b);
  xA=inf;
  err=inf;
  k=0;

  if ya*yb>0
    fprintf("there is no zero in this interval")
  end

  while err>delta && k<maxI
    c=(a+b)/2;
    yc=feval(f,c);

    if yc==0
      a=c;
      b=c;
    elseif yb*yc>0
      b=c;
      yb=c;
    else
      a=c;
      ya=c;
    end

    if k>0
      err=((c-xA)/c);
    endif
    xA=c;
    k+=1;
  endwhile

endfunction
