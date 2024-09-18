# config_generation
Will be public repository that has point cloud + Lloyds + Delauney

# Lloyd_create_pointclouds_parfor.m

Main script to generate initial point clouds and iteratively move them via Lloyds algorithm in a bounded box.  Important variables:

n_sims: number of independent point clouds to generate

n_node: number of points within each point cloud

crs: the four corners of the bounding box to contain the point within

numIterations: how many times Lloyd's algorithm should be applied to the data

  Iter: not used here other than to determine numIterations, a vector used to specify at what iterations future analysis should be run on
  
x_loc and y_loc: cells to contain the x and y coordinates of the point cloud for each simulation and each iteration of Lloyds algorithm

Calls this function:

**lloydsAlgorithm** - pulled from the MathWorks file exchange
Aaron T. Becker's Robot Swarm Lab (2024). lloydsAlgorithm(Px,Py, crs, numIterations, showPlot) (https://www.mathworks.com/matlabcentral/fileexchange/41507-lloydsalgorithm-px-py-crs-numiterations-showplot), MATLAB Central File Exchange.

