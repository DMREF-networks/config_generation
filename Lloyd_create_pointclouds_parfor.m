% This script runs the simulations in parallel to create point clouds
% point clouds are saved at all iterations of Lloyds algorithm

% these lines are needed to run on the cluster, rather than locally
% c = parcluster; % cluster identified by default profile
% parpool(c);

rng('shuffle')

fln = 'test.mat'; % file to save data

n_sims = 1;    % number of simulations
n_node = 500;    % number of nodes
crs = [0 0; 0 2000; 2000 2000; 2000 0]; % corners of box to contain points

% this vector defines the iterations to collect data at in future runs
% Iter = [0 round(logspace(0,2,8))]; 
Iter = [0:100];
numIterations = max(Iter);

x_loc = cell(n_sims,numIterations+1);
y_loc = cell(n_sims,numIterations+1);

parfor k=1:n_sims

    fprintf('simulation %d of %d\n',k,n_sims)

    x_tmp = cell(1,numIterations);
    y_tmp = cell(1,numIterations);

    x = 2000*rand(n_node,1);
    y = 2000*rand(n_node,1);

    % x(simulation, iternation) - save every iteration
    x_tmp{1,1}=x;
    y_tmp{1,1}=y;

    tic
    for kn = 1:numIterations

        [x, y] = lloydsAlgorithm(x,y, crs, 1, false);

        % x(simulation, iternation)
        x_tmp{1,kn+1}=x;
        y_tmp{1,kn+1}=y;

    end % loop over iterations
    toc

    x_loc(k,:) = x_tmp;
    y_loc(k,:) = y_tmp;

end % loop over simulations

save(fln)


