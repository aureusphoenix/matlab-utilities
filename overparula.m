function map = overparula(dis,limit)

%% Input handling

    arguments
        dis (1,1) double = 255
        limit (1,:) double = [1 1]
    end
    
    if numel(limit) == 1
        limit(2) = limit;
    elseif numel(limit) > 2
        error('Limits must not contain more than two values.')
    end
    
    if any(limit > 50) || any(limit < 0)
        error('Limits must not lie outside the interval [0,50].')
    end

%% Main code

    map = parula(dis);
    
    % lower limit gray
    map(1:ceil(limit(1)*dis/100),1) = 0.8;
    map(1:ceil(limit(1)*dis/100),2) = 0.8;
    map(1:ceil(limit(1)*dis/100),3) = 0.8;
    
    % upper limit black
    map(dis-floor(limit(2)*dis/100):dis,1) = 0;
    map(dis-floor(limit(2)*dis/100):dis,2) = 0;
    map(dis-floor(limit(2)*dis/100):dis,3) = 0;

end


