# CCI_Subphenotype_Classifier_Applications
This respository contained the CCI subphenotype classifier R shiny application, packaged in Windows version.
The current version is Windows v0.1

To use the application, simply click the .exe file.

This application was based on a XGBoost model built for the identification of the subphenotypes of chronic critical illness patient.
This model is applicable to patients who meet the diagnostic criteria of chronic critical illness (CCI). 
By inputting the average value of relevant indicators on the 14th day of ICU stay, the output results of CCI patients' subphenotypes (Phenotype A, B, C, or D) can be obtained.

CCI was defined as a long-term status with critical organ dysfunction during ICU stay.
The criteria we used were: 
 (a) ICU duration ≥ 14 days; 
 (b) coexist with the evidence of persistent organ dysfunction (cardiovascular SOFA ≥ 1 or score in any other organ system ≥ 2) at Day 14.

Please note that this application is intended for clinical and research purposes only and cannot replace the clinician's guidance.

For more detailed information, please check:
Liu P, Li S, Zheng T, Wu J, Fan Y, Liu X, Gong W, Xie H, Liu J, Li Y, Jiang H, Zhao F, Zhang J, Wu L, Ren H, Hong Z, Chen J, Gu G, Wang G, Zhang Z, Wu X, Zhao Y, Ren J. Subphenotyping heterogeneous patients with chronic critical illness to guide individualised fluid balance treatment using machine learning: a retrospective cohort study. EClinicalMedicine. 2023 Apr 20;59:101970. doi: 10.1016/j.eclinm.2023.101970. PMID: 37131542; PMCID: PMC10149181.
