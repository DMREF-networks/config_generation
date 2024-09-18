# config_generation
Will be public repository that has point cloud + Lloyds + Delauney

# Lloyd_create_pointclouds_parfor.m

Main script to generate initial point clouds and iteratively move them via Lloyds algorithm in a bounded box.

Calls this function:

**lloydsAlgorithm** - pulled from the MathWorks file exchange
Aaron T. Becker's Robot Swarm Lab (2024). lloydsAlgorithm(Px,Py, crs, numIterations, showPlot) (https://www.mathworks.com/matlabcentral/fileexchange/41507-lloydsalgorithm-px-py-crs-numiterations-showplot), MATLAB Central File Exchange.

