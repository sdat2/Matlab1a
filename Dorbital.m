function spinnersquare = Dorbital(x,y,z);
% Computes probability distribution function value for given position (not
% normalised)
spinnersquare = x*.y*.exp(-sqrt(x*.x+y*.y+z*.z));