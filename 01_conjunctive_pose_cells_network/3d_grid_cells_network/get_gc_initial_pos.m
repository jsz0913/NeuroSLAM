
function [gcX, gcY, gcZ] = get_gc_initial_pos()

    % set the initial position in the grid cell network
    global GC_X_DIM;
    global GC_Y_DIM;
    global GC_Z_DIM;

    gcX = floor(GC_X_DIM / 2);  % in 1:36
    gcY = floor(GC_Y_DIM / 2);  % in 1:36
    gcZ = floor(GC_Z_DIM / 2);  % in 1:36
end
