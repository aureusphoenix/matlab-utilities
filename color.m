function val = color(idx)

%% Input handling

    arguments
        idx (1,1) double
    end

%% Main code

    val = get(gca,'colororder');
    val = val(idx, :);

end


