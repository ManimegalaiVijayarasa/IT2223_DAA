n=10;

tic;  % Start timing

for i=1:n
    disp(i);
end

elapsedTime= toc;   % End timing and store ela[sed time

fprintf('Elapsed Time:%f seconds\n',elapsedTime);