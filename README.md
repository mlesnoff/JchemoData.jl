# JchemoData.jl

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)

The Julia package **JchemoData** is a repository containing datasets (chemometrics and others) in various formats (JLD2, CSV, etc.). Some of these datasets are used in the examples provided in [**Jchemo.jl**](https://github.com/mlesnoff/Jchemo.jl) and [**JchemoDemo**](https://github.com/mlesnoff/JchemoDemo).

The **JLD2 datasets** are listed and described below.

## <span style="color:green"> **Installation** </span> 

In order to install **JchemoData**, run

```julia
pkg> add https://github.com/mlesnoff/JchemoData.jl.git
```

## <span style="color:green"> **Use** </span> 

A JLD2 dataset can be loaded as follows (in REPL):

```julia
using Jchemo, JchemoData
using JLD2
path_jdat = dirname(dirname(pathof(JchemoData)))
db = joinpath(path_jdat, "data/cassav.jld2") 
@load db dat
pnames(dat) # print the names of the objects contained in dat
```

## <span style="color:green"> **Available datasets** </span> 

- [**Files**](https://github.com/mlesnoff/JchemoData.jl/tree/main/data) 

## <span style="color:green"> **JLD2 datasets** </span> 

### **cassav**
NIRS data on cassava roots (2009-2013; South-America).
FOSS NiRSystem Instruments 400-2498 nm (step = 2 nm). This is an extract of the dataset used in Lesnoff et al. 2020. 

Response variable:
- TBC concentration (beta-carotene pigment).

Sources: 
- Harvest Plus Challenge Program, ICRAF, Columbia.

References:
- Davrieux, F., Dufour, D., Dardenne, P., Belalcazar, J., Pizarro, M., Luna, J., Londoño, L., Jaramillo, A., Sanchez, T., Morante, N., Calle, F., Becerra Lopez-Lavalle, L., Ceballos, H., 2016. LOCAL regression algorithm improves near infrared spectroscopy predictions when the target constituent evolves in breeding populations. Journal of Near Infrared Spectroscopy 24, 109. https://doi.org/10.1255/jnirs.1213

- Lesnoff, M., Metz, M., Roger, J.-M., 2020. Comparison of locally weighted PLS strategies for regression and discrimination on agronomic NIR data. Journal of Chemometrics n/a, e3209. https://doi.org/10.1002/cem.3209

### **cereal**
Dataset 'cereal' in Filzmoser 2023.
For 15 cereals an X and Y data set, measured on the same objects, is 
available (Filzmoser 2023). The X data are 145 infrared spectra, and the
Y data are 6 chemical/technical properties (Heating value, C, H, N, Starch, Ash). 
The cereals come from 5 groups: B=Barley, M=Maize, R=Rye, T=Triticale, W=Wheat. 
The data set can be used for PLS2.

Sources: 
- Package chemometrics; Multivariate Statistical Analysis in Chemometrics, 
2023, Filzmoser P.

References:
- K. Varmuza and P. Filzmoser: Introduction to Multivariate Statistical 
Analysis in Chemometrics. CRC Press, Boca Raton, FL, 2009.

### **challenge2018**
NIRS data (protein content of forages and feed) used in the challenge of the congress [Chemometrics2018](https://chemom2018.sciencesconf.org/) (Paris, January 2018). The original [data](https://chemom2018.sciencesconf.org/resource/page/id/5.html) contain errors (duplicates). The data provided in **JchemoData** have been corrected (duplicates have been removed), and documented with new descriptors (type of vegetal materials).

### **challenge2021**
NIRS data (reflectance) used in the challenge of the e-congress [Chemometrics2021](https://chemom2021.sciencesconf.org/) (Februaru 2021). A data description is available [here](https://chemom2021.sciencesconf.org/resource/page/id/5.html?lang=fr).

### **corn**
[Eigenvector Corn data](https://eigenvector.com/resources/data-sets) 

This data set consists of 80 samples of corn measured on 3 different 
NIR spectrometers. The wavelength range is 1100-2498nm at 2 nm intervals (700 channels). 
The moisture, oil, protein and starch values for each of the samples is also included. 
A number of NBS glass standards were also measured on each instrument. 
The data was originally taken at Cargill.
- m5spec: [80x700 dataset] Spectra on instrument m5
- mp5spec: [80x700 dataset] Spectra on instrument mp5
- mp6spec: [80x700 dataset] Spectra on instrument mp6
- propvals: [80x4 dataset] Property values for samples
- m5nbs: [3x700 dataset] NBS glass stds on m5
- mp5nbs: [4x700 dataset] NBS glass stds on mp5
- mp6nbs: [4x700 dataset] NBS glass stds on mp

### **fermentation**
Dataset 'NIR' in Filzmoser 2023.
Liebmann et al. 2009 (Filzmoser et al 2012) provided this dataset where 166 alcoholic
fermentation mashes of different feedstock (rye, wheat, and corn) were analyzed. The response 
variables are the concentrations of glucose and ethanol (in grams per liter) in substrates
from the bioethanol processes. The 235 predictor variables contain the first derivatives 
of near infrared spectroscopy (NIR) absorbance values at 1115–2285 nm, measured 
in liquid samples. 

Sources: 
- Package chemometrics; Multivariate Statistical Analysis in Chemometrics
2023, Filzmoser P.

References:
- B. Liebmann, A. Friedl, and K. Varmuza. Determination of glucose and ethanol 
in bioethanol production by near infrared spectroscopy and chemometrics. 
Anal. Chim. Acta, 642:171-178, 2009.
- Filzmoser, P., Gschwandtner, M., Todorov, V., 2012. Review of sparse methods 
in regression and classification with application to chemometrics. Journal of 
Chemometrics 26, 42–51. https://doi.org/10.1002/cem.1418

### **forages2**
NIRS data on dried and grounded mixed forages (n = 485): stems, leaves etc. 
Origin: mainly tropical African areas. FOSS NiRSystem Instruments 1100-2498 nm 
(step = 2 nm). Data being private, spectra have been preprocessed with a standard 
normal variation (SNV) and Savitzky-Golay (deriv = 2) transformation. 

Response variables:
- DM: dry matter content
- NDF: fibers content
- typ: Type of forage

Sources: 
- CIRAD, [UMR Selmet](https://umr-selmet.cirad.fr/en)

### **grapes**
Varieties of wine grapes, to be discriminated by means of NIR and visible
spectrometry. The spectra were measured in transmission on berries separated from the bunch, 
in laboratory conditions, with a ZEISS MMS1 spectrometer. The wavelengths ranged from 
310 to 1100 nm. These data were collected within the framework of a project aiming at characterizing 
the sugar content and the acidity of wine grapes by NIR spectrometry. Thus,
the berries were selected to span a great heterogeneity of maturity. Spectra were acquired 
by batches of 50 individuals. Each batch contained individuals of the same variety. The 
experimentation related to 3 varieties: carignan (crg), grenache blanc (grb) and grenache noir (grn). 
Only crg and grb varieties were measured on different batches, at various dates.
For crg and grb varieties, the training set and the test set are different batches, 
whereas for the grn variety, a batch of spectra was cut randomly in two equal parts. Thus, 
the calibration and test sets consisted each of n = 125 individuals described 
by p = 256 variables.

References:
- Roger JM, Palagos B, Guillaume S, Bellon-Maurel V. Discriminating from highly 
multivariate data by Focal Eigen Function discriminant analysis; application 
to NIR spectra. Chemometrics and Intelligent Laboratory Systems. 2005;79(1):31-41. 
doi:10.1016/j.chemolab.2005.03.006.

### **grapevariety**
Visible-NIR spectra collected (with Labspec ASD) on n = 432 fresh leaves of three wine grape varieties 
to be discriminated. For confidentiality, the spectra have been anonymized and preprocessed
with a Savitsky-Golay transformation (first derivate). A gap observed in the spectra at 1000 nm 
has been removed before the preprocessing. 

Sources: 
- M. Ecarnot, Inrae, UMR Agap, Montpellier, France.

### **ham**
Sensory evaluation of eight American dry-cured ham products, performed by a panel of trained assessors.

References:
- M.D. Guardia, A.P. Aguiar, A. Claret, J. Arnau & L. Guerrero (2010). Sensory characterization of dry-cured ham using free-choice profiling. Food Quality and Preference, 21(1), 148-155. doi: 10.1016/j.foodqual.2009.08.014

- Tchandao Mangamana, E., Cariou, V., Vigneau, E., Glèlè Kakaï, R.L., Qannari, E.M., 2019. Unsupervised multiblock data analysis: A unified approach and extensions. Chemometrics and Intelligent Laboratory Systems 194, 103856. https://doi.org/10.1016/j.chemolab.2019.103856

### **iris** 
Fisher's or Anderson's [iris](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html) dataset gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.

References: 
- Fisher, R. A. (1936) The use of multiple measurements in taxonomic problems. Annals of Eugenics, 7, Part II, 179–188.

- Anderson, Edgar (1935). The irises of the Gaspe Peninsula, Bulletin of the American Iris Society, 59, 2–5.

- Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) The New S Language. Wadsworth & Brooks/Cole. (has iris3 as iris.)

### **linnerud**
Linnerud data (Tenenhaus 1998, Table 1, p.15).

Two tables of measures on 20 humans:
- X = 3 variables of physical exercice.
- Y = 3 variables of body condition. 

References: 
- Tenenhaus, M., 1998. La régression PLS: théorie et pratique. Editions Technip, Paris.

### **mango_anderson**
NIRS data from [mango](https://data.mendeley.com/datasets/46htwnp833/1).

References:
- Anderson, N.T., Walsh, K.B., Flynn, J.R., Walsh, J.P., 2021. Achieving robustness across season, location and cultivar for a NIRS model for intact mango fruit dry matter content. II. Local PLS and nonlinear models. Postharvest Biology and Technology 171, 111358. https://doi.org/10.1016/j.postharvbio.2020.111358

- Anderson, N.T., Walsh, K.B., Subedi, P.P., Hayes, C.H., 2020. Achieving robustness across season, location and cultivar for a NIRS model for intact mango fruit dry matter content. Postharvest Biology and Technology 168, 111202. https://doi.org/10.1016/j.postharvbio.2020.111202

### **mnist20pcts**
This is a random 20%-extraction (ntrain = 12000, ntest = 2000) of the CSV version of the MNIST dabase of handwritten digits (LeCun et al.).

Each row of matrices X of the dataset is the unfolding of a 28*28 image (784 columns) that represents a number having value between '0' and '9' (response to predict) and handwritten. Each image pixel contains a grey level between 0 and 255.

The JLD2 dataset is compressed; it requires package CodecZlib to be loaded.

Sources: 
- Original: http://yann.lecun.com/exdb/mnist/
- CSV file (used for this extraction): https://www.kaggle.com/datasets/oddrationale/mnist-in-csv

### **mlnir**
MLNIR dataset available at: https://zenodo.org/records/16781223

N = 208 hydrocarbon samples. For each sample, a near-infrared spectrum (intensities measured at given wavelenghts in cm-1) 
and a density value are provided. The dataset contains: 
* X: Raw NIR data
* Xp: NIR data after preprocessing (SNV + 2nd derivative Savitzky-Golay)
* y: Density normalized to [0, 1] (response to predict)

### **octane** 
[Octane](https://cran.r-project.org/web/packages/rrcov/index.html) dataset contains near infrared absorbance spectra (NIR) of n=39 gasoline samples over 226 wavelengths ranging from 1102 nm to 1552 nm with measurements every two nanometers. For each of the 39 production gasoline samples the octane number was measured. 

Six of the samples **(25, 26, and 36-39)** contain added alcohol.

References:
- M. Hubert, P. J. Rousseeuw, K. Vanden Branden (2005), ROBPCA: a new approach to robust principal components analysis, Technometrics, 47, 64–79.
- P. J. Rousseeuw, M. Debruyne, S. Engelen and M. Hubert (2006), Robustness and Outlier Detection in Chemometrics, Critical Reviews in Analytical Chemistry, 36(3–4), 221–242.

### **ozone**
[Ozone](https://cran.r-project.org/web/packages/mlbench/index.html) dataset. A data frame with 366 observations on 13 variables, each observation is one day:
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

References:
- Leo Breiman, Department of Statistics, UC Berkeley. Data used in Breiman L., Friedman J.H. (1985). Estimating optimal transformations for multiple regression and correlation, JASA, 80, pp. 580-598.

### **pac** 
Dataset 'PAC' in Filzmoser 2023.
This dataset contains data describing chemical–physical properties of chemical compounds 
and thus belongs to the area of quantitative structure–property relationships (QSAR). 
The compounds are modeled by chemical structure data, which have been drawn
manually by the structure editor software Corina and Dragon. Here, 209 polycyclic aromatic compounds, 
which are characterized by 467 molecular descriptors (X), are considered. The response variable (y) 
is the gas chromatographic retention index for several substance classes. Because the descriptors cover
a great diversity of chemical structures, still many of them may be irrelevant for predicting the response. 

Sources: 
- Package chemometrics; Multivariate Statistical Analysis in Chemometrics 2023, Filzmoser P.

References:
- Filzmoser, P., Gschwandtner, M., Todorov, V., 2012. Review of sparse methods 
in regression and classification with application to chemometrics. Journal of 
Chemometrics 26, 42–51. https://doi.org/10.1002/cem.1418


### **srbct**
[Data](https://hastie.su.domains/ElemStatLearn/data.html) for small round blue cell 
tumors (SRBCT) of childhood.  These data, consisting of expression measurements 
on 2,308 genes, were obtained from glass-slide cDNA microarrays, prepared according
to the standard National Human Genome Research Institute protocol. Each expression 
value is a log-ratio log(R/G). R is the amount of gene-specific RNA in the target 
sample that hybridizes to a particular (gene-specific) spot on the microarray, 
and G is the corresponding amount of RNA from a reference sample. The tumors are 
classified as Burkitt lymphoma (BL), Ewing sarcoma (EWS), neuroblastoma (NB), 
or rhabdomyosarcoma (RMS). 

A total of 63 training samples and 25 test samples were provided,
although five of the latter were not SRBCTs. One gene per row, one sample per column.
Cancer classes are labelled 1, 2, 3, 4, 5 for c("BL", "EWS", "NB", "RMS", "Not Srbct").
Class 5 is only present in the test data.

References:
- Tibshirani, R., Hastie, T., Narasimhan, B., Chu, G., 2002. 
Diagnosis of multiple cancer types by shrunken centroids of gene expression. 
Proceedings of the National Academy of Sciences 99, 6567–6572. 
https://doi.org/10.1073/pnas.082099299

- https://github.com/empathy87/The-Elements-of-Statistical-Learning-Python-Notebooks/blob/master/examples/SRBCT%20Microarray.ipynb

### **tecator**
NIRS data recorded on a Tecator Infratec Food and Feed Analyzer working in the wavelength range 850 - 1050 nm by the Near Infrared Transmission (NIT) principle. Each sample contains finely chopped pure meat with different moisture, fat and protein contents. For each meat sample the data consists of a 100 channel spectrum of absorbances and the contents of moisture (water), fat and protein. The absorbance is -log10 of the transmittance measured by the spectrometer. The three contents, measured in percent, are determined by analytic chemistry. 

A full description is given [here](http://lib.stat.cmu.edu/datasets/tecator).

**Warning**: The original X-data contains 22 duplicates, and the Y-data 15 replicates. 
These replicates were removed in the present JLD2 dataset.

### wheatkernels
[Dataset 3](http://www.models.kvl.dk/wheat_kernels) used in Cui & Fearn 2018.

Wheat kernels (ntrain = 415) representing 43 different varieties or variety mixtures from two different 
locations in Denmark made up the calibration set, while wheat kernels (ntest = 108) representing 11 
different varieties from one location made up the test set10. All kernels were randomly chosen 
from bulk samples. The test samples were acquired with the calibration samples, but stored for 
about 2 additional months before measurement in order to provide a check for temporal drift in 
the samples and instrumentation.

References:
- Cui C, Fearn T, 2018. Modern prcatical convolutionnal neural networks for multivariate 
regression: application to NIR calibration. Chemometrics and Intelligent Laboratory Systems 
182, 9-20.

- Dorthe Kjær Pedersen, Harald Martens, Jesper Pram Nielsen and Søren Balling Engelsen. 2002. 
Near infrared absorption and scattering separated by Extended Inverted Signal Correction (EISC). 
Analysis of NIT spectra of single wheat seeds. Applied Spectroscopy, 56, 9, 1206-1214.

- Jesper Pram Nielsen, Dorthe Kjær Pedersen and Lars Munck. 2003. Development of non-destructive 
screening methods for single kernel characterisation of wheat. Cereal Chemistry, 80, 3, 274-280.

### wines_sensory
Wines sensory dataset: A jury made up of four judges (expert tasters) evaluated the appearance of eight wines according to the procedure known as free profile, where each judge notes on a scale from 0 to 10 the products according to his/her own variables (Williams & Langron 1984, Hanafi & Qannari, 2008). For a product and given variable, the note allotted by a judge corresponds to the intensity which he/she perceives and which he/she is able, thanks to a preliminary drive, to translate in form of a note. Each matrix X is associated with one judge. The goal of the analysis was to evaluate if there is an agreement between judges or groups of judges and assess the relationships among wines.

References:
- Williams A. and Langron S.P. (1984). The use of free-choice profiling for the evaluation of commercial ports, J. Sci. Food Agric, 35, 558-568.

- Hanafi, M., Qannari, E.M., 2008. Nouvelles propriétés de l’analyse en composantes communes et poids spécifiques. Journal de la société française de statistique 149, 75–97.

## <span style="color:green"> **Author** </span> 

**Matthieu Lesnoff**

- Cirad, [**UMR Selmet**](https://umr-selmet.cirad.fr/en), Montpellier, France

- [**ChemHouse**](https://www.chemproject.org/ChemHouse), Montpellier

**matthieu.lesnoff@cirad.fr**




