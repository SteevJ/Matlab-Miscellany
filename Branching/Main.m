% Steve Jaycox 2013
% Small Branching line program test

n = 5;      % # of iterations

colormap = winter(n+1);

axes_size               = [-1 1 0 1];

line_array              = cell(1, 4);

line_array{1, 1}        = [0 0];
line_array{1, 2}        = [0 0.25];
line_array{1, 3}        = length_calc(line_array{1, 1}, line_array{1, 2});
line_array{1, 4}        = colormap(1,:);

% Going to need a for-loop that defines how many splittings occur

    for jj = 1:n

        for ii = 2^(jj-1):2^(jj)-1
    
            line_array{2*ii, 1}     = [line_array{ii, 1}(2) line_array{ii, 1}(2)-(line_array{ii, 3}/3)];
            line_array{2*ii, 2}     = [line_array{ii, 2}(2) line_array{ii, 2}(2)+(line_array{ii, 3}/3)];
            line_array{2*ii, 3}     = length_calc(line_array{2*ii, 1}, line_array{2*ii, 2});
            line_array{2*ii, 4}     = colormap(jj+1,:);

            line_array{2*ii+1, 1}	= [line_array{ii, 1}(2) line_array{ii, 1}(2)+(line_array{ii, 3}/3)];
            line_array{2*ii+1, 2}	= [line_array{ii, 2}(2) line_array{ii, 2}(2)+(line_array{ii, 3}/3)];
            line_array{2*ii+1, 3}	= length_calc(line_array{2*ii+1, 1}, line_array{2*ii+1, 2});
            line_array{2*ii+1, 4}   = colormap(jj+1,:);
            
        end
        
    end

    axis(axes_size)
    
    for jj = 1:size(line_array, 1)
        line('XData', line_array{jj, 1}, 'YData', line_array{jj, 2}, 'Color', line_array{jj, 4})
    end
