function range = vrange(vector, method)

%% Input handling

    arguments
        vector (1,:) double
        method {mustBeMember(method,{'min-max','start-end'})} = 'start-end';
    end

%% Main code

    switch lower(method)
        case 'start-end'
            range = vector(end) - vector(1);
        case 'min-max'
            range = min(vector) - max(vector);
    end

end


