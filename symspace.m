function out = symspace(range, discretization)

%% Input handling

    arguments
        range (1,1) double {mustBePositive}  = 1
        discretization (1,1) double = 1000;
    end

%% Main code

    out = linspace(-range, range, discretization);

end

