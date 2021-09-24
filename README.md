# Assessing Suppression Strategies

Code to reproduce the results described in "Dynamical SPQEIR model assesses the effectiveness of non-pharmaceutical interventions against COVID-19 epidemic outbreaks" paper.  

## Table of contents
The notebook Assessing_suppression_measures.ipynb includes all simulations and curve fitting using _lmfit_.   
The notebooks SPQEIR_MCMC*.ipynb include Monte Carlo parameter estimations.  
Data are included in the notebook.   

The MATLAB files data_mobility_SPQEIR.mat anf mobility_canges.m are data and analysis code for changes in mobility patterns during the first lockdown in Spring 2020, for the condiered countries.

For data references, please refer to the original publication and the references therein.

### Requirements

The code was developed on Python v. 3.7.6 and MATLAB 2019b and was tested on MacOS Big Sur 11.5.

In addition to standard Python packages, the following ones are required: _lmfit_ 1.0.1, _numpy_ 1.19.4, _scipy_ 1.4.1, _uncertainties_ 3.1.4, _asteval_ 0.9.18, _pyMC3_, _pymcmcstat_ 1.9.1, at the recommended version or higher versions.  


## Shinyapp
A user-friendly online shinyapp to interactively simulate different scenarios with the SPQEIR model is available on: https://jose-ameijeiras.shinyapps.io/SPQEIR_model/. It allows to reproduce the present outputs and to perform sensitivity analysis.


## Credits

Please cite the original reference: "Proverbio, Daniele, et al. "Dynamical SPQEIR model assesses the effectiveness of non-pharmaceutical interventions against COVID-19 epidemic outbreaks." PloS one 16.5 (2021): e0252019" (https://doi.org/10.1371/journal.pone.0252019)

The code was developed primarily by Daniele Proverbio and Françoise Kemp, with contributions by Stefano Magni.   
The shinyapp was developed by Jose Ameijeiras-Alonso, with contributions by Daniele Proverbio.
