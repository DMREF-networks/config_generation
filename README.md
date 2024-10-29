# config_generation

A repository for generating point cloud point locations in 2D to be created into disordered network metamaterials.  

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
Aaron T. Becker's Robot Swarm Lab (2024). lloydsAlgorithm(Px,Py, crs, numIterations, showPlot) (https://www.mathworks.com/matlabcentral/fileexchange/41507-lloydsalgorithm-px-py-crs-numiterations-showplot), MATLAB Central File Exchange, Accessed on June 2022.


# License

Shield: [![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg
