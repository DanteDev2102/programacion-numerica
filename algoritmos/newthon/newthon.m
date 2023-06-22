function p0 = newton(f,df,p0,delta,maxI)
   err = inf;

   for k=1:maxI
     yp0=feval(f,p0);
     dyp0=feval(df,p0);
     p1=p0-(yp0/dyp0);
     err=abs((p1-p0)/p1);
     p0=p1;
     if err<delta
      break
    end

   endfor
endfunction
