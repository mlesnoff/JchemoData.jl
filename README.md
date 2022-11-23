# JchemoData.jl

**JchemoData** provides datasets used as examples to train on package [**Jchemo.jl**](https://github.com/mlesnoff/Jchemo.jl). 

## <span style="color:green"> **Installation** </span> 

In order to install **JchemoData**, run

```julia
pkg> add https://github.com/mlesnoff/JchemoData.jl.git
```

## <span style="color:green"> **Use** </span> 

A dataset can be loaded as follows (in REPL):

```julia
using Jchemo, JchemoData
using JLD2
mypath = dirname(dirname(pathof(JchemoData)))
db = joinpath(mypath, "data", "cassav.jld2") 
@load db dat
pnames(dat) # print the names of the objects contained in dat
```

## <span style="color:green"> **Available datasets** </span> 

- [**Datasets**](https://github.com/mlesnoff/JchemoData.jl/tree/main/data) 

## <span style="color:green"> **Description of the datasets** </span> 

### **cassav**

NIRS data from cassava roots (2009-2013; South-America).
FOSS NiRSystem Instruments 400-2498 nm (step = 2 nm). This is an extract of the dataset used in Lesnoff et al. 2020. Response variable:
- TBC concentration (beta-carotene pigment).

Source: Harvest Plus Challenge Program, ICRAF, Columbia.

References:

- Davrieux, F., Dufour, D., Dardenne, P., Belalcazar, J., Pizarro, M., Luna, J., Londoño, L., Jaramillo, A., Sanchez, T., Morante, N., Calle, F., Becerra Lopez-Lavalle, L., Ceballos, H., 2016. LOCAL regression algorithm improves near infrared spectroscopy predictions when the target constituent evolves in breeding populations. Journal of Near Infrared Spectroscopy 24, 109. https://doi.org/10.1255/jnirs.1213

- Lesnoff, M., Metz, M., Roger, J.-M., 2020. Comparison of locally weighted PLS strategies for regression and discrimination on agronomic NIR data. Journal of Chemometrics n/a, e3209. https://doi.org/10.1002/cem.3209

### **challenge2018**

NIRS data (protein content of forages and feed) used in the challenge of the congress [Chemometrics2018](https://chemom2018.sciencesconf.org/) (Paris, January 2018). The original [data](https://chemom2018.sciencesconf.org/resource/page/id/5.html) contain errors (duplicates). The data provided in **JchemoData** have been corrected (duplicates have been removed), and documented with new descriptors (type of vegetal materials).

### **forages**

NIRS data from mixed forages (dried and grounded): stems, leaves etc. Origin: mainly tropical African areas. FOSS NiRSystem Instruments 1100-2498 nm (step = 2 nm).

Source: CIRAD, [Selmet research unit](https://umr-selmet.cirad.fr/en)

### **forages2**

NIRS data from mixed forages (dried and grounded): stems, leaves etc. Origin: mainly tropical African areas. FOSS NiRSystem Instruments 1100-2498 nm (step = 2 nm). Data being private, spectra have been preprocessed with Savitzky-Golay (d = 2). Response variables:
- DM: dry matter content
- NDF: fibers content

Source: CIRAD, [Selmet research unit](https://umr-selmet.cirad.fr/en)

### **ham**

Sensory evaluation of eight American dry-cured ham products, performed by a panel of trained assessors.

References:
- M.D. Guardia, A.P. Aguiar, A. Claret, J. Arnau & L. Guerrero (2010). Sensory characterization of dry-cured ham using free-choice profiling. Food Quality and Preference, 21(1), 148-155. doi: 10.1016/j.foodqual.2009.08.014

- Tchandao Mangamana, E., Cariou, V., Vigneau, E., Glèlè Kakaï, R.L., Qannari, E.M., 2019. Unsupervised multiblock data analysis: A unified approach and extensions. Chemometrics and Intelligent Laboratory Systems 194, 103856. https://doi.org/10.1016/j.chemolab.2019.103856

### **iris** 

Fisher's or Anderson's [iris](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html) data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.

References: 
- Fisher, R. A. (1936) The use of multiple measurements in taxonomic problems. Annals of Eugenics, 7, Part II, 179–188.

- Anderson, Edgar (1935). The irises of the Gaspe Peninsula, Bulletin of the American Iris Society, 59, 2–5.

- Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) The New S Language. Wadsworth & Brooks/Cole. (has iris3 as iris.)

### **linnerud**

Linnerud data (Tenenhaus 1998, Table 1, p.15).

Two tables of measures on 20 humans:
* X = 3 variables of physical exercice.
* Y = 3 variables of body condition. 

References: 
- Tenenhaus, M., 1998. La régression PLS: théorie et pratique. Editions Technip, Paris.

### **mango_anderson**

NIRS data from [mango](https://data.mendeley.com/datasets/46htwnp833/1).

References:
- Anderson, N.T., Walsh, K.B., Flynn, J.R., Walsh, J.P., 2021. Achieving robustness across season, location and cultivar for a NIRS model for intact mango fruit dry matter content. II. Local PLS and nonlinear models. Postharvest Biology and Technology 171, 111358. https://doi.org/10.1016/j.postharvbio.2020.111358

- Anderson, N.T., Walsh, K.B., Subedi, P.P., Hayes, C.H., 2020. Achieving robustness across season, location and cultivar for a NIRS model for intact mango fruit dry matter content. Postharvest Biology and Technology 168, 111202. https://doi.org/10.1016/j.postharvbio.2020.111202

### **octane** 

The [octane](https://cran.r-project.org/web/packages/rrcov/index.html) data contains near infrared absorbance spectra (NIR) of n=39 gasoline samples over 226 wavelengths ranging from 1102 nm to 1552 nm with measurements every two nanometers. For each of the 39 production gasoline samples the octane number was measured. Six of the samples (25, 26, and 36-39) contain added alcohol.

References:
- M. Hubert, P. J. Rousseeuw, K. Vanden Branden (2005), ROBPCA: a new approach to robust principal components analysis, Technometrics, 47, 64–79.

P. J. Rousseeuw, M. Debruyne, S. Engelen and M. Hubert (2006), Robustness and Outlier Detection in Chemometrics, Critical Reviews in Analytical Chemistry, 36(3–4), 221–242.

### **ozone**

[Ozone](https://cran.r-project.org/web/packages/mlbench/index.html) data. A data frame with 366 observations on 13 variables, each observation is one day:
1. Month: 1 = January, ..., 12 = December
2. Day of month
3. Day of week: 1 = Monday, ..., 7 = Sunday
4. Daily maximum one-hour-average ozone reading
5. 500 millibar pressure height (m) measured at Vandenberg AFB
6. Wind speed (mph) at Los Angeles International Airport (LAX)
7. Humidity (%) at LAX
8. Temperature (degrees F) measured at Sandburg, CA
9. Temperature (degrees F) measured at El Monte, CA
10. Inversion base height (feet) at LAX
11. Pressure gradient (mm Hg) from LAX to Daggett, CA
12. Inversion base temperature (degrees F) at LAX
13. Visibility (miles) measured at LAX

The problem is to predict the daily maximum one-hour-average ozone reading (variable 4).

Reference:
- Leo Breiman, Department of Statistics, UC Berkeley. Data used in Breiman L., Friedman J.H. (1985). Estimating optimal transformations for multiple regression and correlation, JASA, 80, pp. 580-598.

### **tecator**

NIRS data recorded on a Tecator Infratec Food and Feed Analyzer working in the wavelength range 850 - 1050 nm by the Near Infrared Transmission (NIT) principle. Each sample contains finely chopped pure meat with different moisture, fat and protein contents. For each meat sample the data consists of a 100 channel spectrum of absorbances and the contents of moisture (water), fat and protein. The absorbance is -log10 of the transmittance measured by the spectrometer. The three contents, measured in percent, are determined by analytic chemistry. A full description is given [here](http://lib.stat.cmu.edu/datasets/tecator).

## <span style="color:green"> **Author** </span> 

**Matthieu Lesnoff**

- Cirad, [**UMR Selmet**](https://umr-selmet.cirad.fr/en), Montpellier, France

- [**ChemHouse**](https://www.chemproject.org/ChemHouse), Montpellier

**matthieu.lesnoff@cirad.fr**




