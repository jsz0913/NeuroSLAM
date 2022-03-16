function [weight] = create_gc_weights(xDim, yDim, zDim, xVar, yVar, zVar)
    % Creates a 3D normalised distributio of size dimension^3 with a variance of var.

    xDimCentre = floor(xDim / 2) + 1;
    yDimCentre = floor(yDim / 2) + 1;
    zDimCentre = floor(zDim / 2) + 1;
    weight = zeros(xDim, yDim, zDim);
    for z = 1 : zDim  
        for x = 1 : xDim
            for y = 1 : yDim
               weight(x,y,z) = 1/(xVar*sqrt(2*pi))*exp((-(x - xDimCentre) ^ 2) / (2 * xVar ^ 2)) ...
                   * 1/(yVar*sqrt(2*pi))*exp((-(y - yDimCentre) ^ 2) / (2 * yVar ^ 2)) ...
                   * 1/(zVar*sqrt(2*pi))*exp((-(z - zDimCentre) ^ 2) / (2 * zVar ^ 2)); 
            end
        end
    end
    % ensure that it is normalised
    total = sum(sum(sum(weight)));
    weight = weight./total;       

end
