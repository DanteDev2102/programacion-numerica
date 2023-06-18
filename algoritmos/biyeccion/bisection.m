function root = bisection(func, xl, xu, maxIterations, tolerance)
  haveRoot = func(xl) * func(xu) > 0;

  if haveRoot
    error("there is no root of the given function within this interval");
  end

  minPoint = xl;
  maxPoint = xu;
  stopCriterionValue = Inf;
  iteration = 0;
  xr = Inf;

  while stopCriterionValue > tolerance && iteration < maxIterations
    xr = minPoint + ((maxPoint - minPoint) / 2);

    funcValue = func(xr);
    prevFuncValue = func(minPoint);

    funcSign = sign(funcValue);
    prevFuncSign = sign(prevFuncValue);

    if funcSign == 0
      root = xr;
      break;
    elseif funcSign * prevFuncSign < 0
      maxPoint = xr;
    else
      minPoint = xr;
    end

    if iteration > 0
      stopCriterionValue = abs((xr - prevXr) / xr);
    end

    iteration += 1;

    prevXr = xr;
  end

  root = xr;

endfunction