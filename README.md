# PhosphoEnrichment

PhosphoEnrichment Executable

1. System Requirements

1.1. Prerequisites for Deployment 

Verify that version 9.8 (R2020a) of the MATLAB Runtime is installed.   
If not, you can run the MATLAB Runtime installer.
To find its location, enter
  
    >>mcrinstaller
      
at the MATLAB prompt.
NOTE: You will need administrator rights to run the MATLAB Runtime installer. 

Alternatively, download and install the Windows version of the MATLAB Runtime for R2020a 
from the following link on the MathWorks website:

    https://www.mathworks.com/products/compiler/mcr/index.html
   
For more information about the MATLAB Runtime and the MATLAB Runtime installer, see 
"Distribute Applications" in the MATLAB Compiler documentation  
in the MathWorks Documentation Center.

1.2. Files to Deploy and Package

Files to Package for Standalone 
================================
-PhosphoEnrichment.exe
-MCRInstaller.exe 
    Note: if end users are unable to download the MATLAB Runtime using the
    instructions in the previous section, we also include the component in the deployment app
-PTMsidDB.mat: This file contains the information about the involvement of sites in the pathways (Krug et al, MCP 2019)
-PSP.mat: This file contains the kinase-substrate association in order to do Kinase-Substrate Associations (Hornbeck et al, NAR, 2012)

1.3. The software has been tested on Windows 10, and MATLAB R2020a

2. Installation Guide

The user can open the applciation by clicking on the PhosphoEnrichment.exe under App folder to run the applications. It takes seconds to open the application on the Windows PC (Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz)


3. Demo and Instruction for use

3.1. Pathway Enrichment Analysis: 

Input: After openning the application, the user can copy all the sites/proteins identified in the experiment in the population windows, and the target sites/proteins that wants to be do enrichment analysis in the appropriate panel. The user can selected the aproariate type of data and press Enrcihment Analysis. The sites should be deparated by the - from the protein names

Output: The pathways and their p-values will be appear on the buttom of the panel. The pathways, p-values and the proteins/sites involved in the pathways will be printed in the file. 

3.2. Kinase Substrate Enrichment Analysis:

Input: The phosphosites and their log(fold change) (space delimited) can be copied to the panel, and also the subset of phosphosites that are target to do KSEA on. 

Output: The result will be shown as the bar plot on the panel. The upregulated kinases will be blue, and downregulated will be red. The significnat kinases will be marked with the star. They result will be written in the file. 

4. Contact
If you have any questions, feel free to contact MArzieh Ayati at marzieh.ayati@utrgv.edu

