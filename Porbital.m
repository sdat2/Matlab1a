function spinnsquare = Porbital(x,y,z);
% Computes probability distribution function value for gi;ven position (not
% normalised)
spinnsquare = exp(-sqrt(x*.x+y*.y+z*.z));
