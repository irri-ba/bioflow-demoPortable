---
title: "Multi-Trial Analysis Report"
author: "Contact:<a href = 'https://github.com/Breeding-Analytics/bioflow' target = '_blank'>Breeding Analytics Team, OneCGIAR</a> breedinganalytics@cgiar.org"
date: "March 19, 2025"  
output: html_document
params:
  toDownload: FALSE
---









### Objectives of Multi-Trial Analysis

The objective of this dashboard is to help scientist to understand the following points:

1. Overall number of entries and effect types included in the multi trial analysis (input)

2. High-level view of the phenotypic adjusted means included in the analysis (input)

3. Number of entries connecting the different environments per trait (input)

4. Phenotypic correlation between environments for the traits present (input)

5. Across environment KPIs per trait such as reliability and variance component ratios (output) 

6. Individual across environment predictions for each trait (output) 

7. Individual sensitivity and stability values across environments (output)

<!-- 8. Percent check comparison against the different benchmark varieties present in the dataset (output) -->

8. Genetic correlation between the traits (output)

Understanding these data features should allow the scientist to identify which traits express more genotype by environment interactions and how they should be selected. It should also allow the scientist to assess the correlation between traits and how the product profile should be addressed to maximize genetic gains while developing the needed varieties at the same time. Materials with the highest performance and sensitivity to the environment could be potential nominations for advancement although we recommend to don't select new parents or products until the results from the multi-trial analysis are analyzed with a selection index.  

### Metrics: Table of parameters

The following table aims to make a high-level assessment of the different types of entries included in the analysis across environments.

<!--html_preserve--><div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="reportBuilder_1-out195b2441c0c90ae4" style="width:100%;height:auto;"></div><!--/html_preserve-->

### Metadata: Map of trials planted

The following map allows you to assess the location where trials are planted.

No coordinates available. Skipping planting map.

### Predictions: By environment merit distribution

The following boxplot allows you to inspect the distribution of adjusted means (y-axis) from the different environments for each trait that were used as input for the analysis. The environments are sorted by environmental mean to understand the slope of the regression fitted in the Finlay-Wilkinson model. It is recommended that you have at least 6 environments to fit the random regressions over the environmental indices or other weather and soil variables

<p>&nbsp;</p>

<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-boxplotMtaPredsType-label" for="reportBuilder_1-boxplotMtaPredsType">Effect type</label>
<div>
<select id="reportBuilder_1-boxplotMtaPredsType" class="shiny-input-select"><option value="environment_designation" selected>environment_designation</option>
<option value="designation">designation</option></select>
<script type="application/json" data-for="reportBuilder_1-boxplotMtaPredsType" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
</div>
<div>
<div class="col-sm-12"></div>
</div>
<div>
<div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-boxplotMtaPredsTrait-label" for="reportBuilder_1-boxplotMtaPredsTrait">Trait</label>
<div>
<select id="reportBuilder_1-boxplotMtaPredsTrait" class="shiny-input-select"><option value="DTF" selected>DTF</option>
<option value="EVV">EVV</option>
<option value="PACP">PACP</option>
<option value="GYKGPHA">GYKGPHA</option>
<option value="Emergence">Emergence</option>
<option value="PH">PH</option>
<option value="Canopy">Canopy</option>
<option value="HRR">HRR</option></select>
<script type="application/json" data-for="reportBuilder_1-boxplotMtaPredsTrait" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->

<div style = "width:auto; height:auto; overflow:auto">

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-out3e95f2f69e2d6f30" style="width:100%;height:400px;"></div><!--/html_preserve-->
</div>

### Predictions: Connectivity between environments

The following heatmap and histogram allows you to assess the connectivity (gennotypes in common) between different environments for a given trait. Our recommendation is that each pair of environments should at least have 30 genotypes in common in order to estimate genetic correlations and at least 2-3 entries in common to adjust across environment means. We classify as low everything below 30, intermediate connectivity between 30 to 60, and high everything above 60.

<p>&nbsp;</p>

<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-traitMtaConnect-label" for="reportBuilder_1-traitMtaConnect">Trait</label>
<div>
<select id="reportBuilder_1-traitMtaConnect" class="shiny-input-select"><option value="DTF" selected>DTF</option>
<option value="EVV">EVV</option>
<option value="PACP">PACP</option>
<option value="GYKGPHA">GYKGPHA</option>
<option value="Emergence">Emergence</option>
<option value="PH">PH</option>
<option value="Canopy">Canopy</option>
<option value="HRR">HRR</option></select>
<script type="application/json" data-for="reportBuilder_1-traitMtaConnect" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
</div>
<div>
<div class="form-group shiny-input-container">
<div class="checkbox">
<label>
<input id="reportBuilder_1-freqConnect" type="checkbox" class="shiny-input-checkbox" checked="checked"/>
<span>Show frequency distribution</span>
</label>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->

<div style = "width:auto; height:auto; overflow:auto">

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-out78737baeac65aa4b" style="width:100%;height:400px;"></div><!--/html_preserve-->

</div>

### Predictions: Correlations between environments

The following heatmap and histogram allows to assess the genetic correlations among the different environment one trait at a time. If the user modeled GxE, this matrix is calculated as the correlation between the environment-specific estimates for individuals. If a pure main-effect model is specified this matrix is calculated as the correlation between the single-trial analysis estimates. We recommend that only environments that are on-average positively correlated with the main cluster (i.e., rG>0) are included in the multi-trial analysis to guarantee decent rates of genetic gain and adapted products in the TPE.

<p>&nbsp;</p>

<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-traitPredictionsCorrelation-label" for="reportBuilder_1-traitPredictionsCorrelation">Trait</label>
<div>
<select id="reportBuilder_1-traitPredictionsCorrelation" class="shiny-input-select"><option value="DTF" selected>DTF</option>
<option value="EVV">EVV</option>
<option value="PACP">PACP</option>
<option value="GYKGPHA">GYKGPHA</option>
<option value="Emergence">Emergence</option>
<option value="PH">PH</option>
<option value="Canopy">Canopy</option>
<option value="HRR">HRR</option></select>
<script type="application/json" data-for="reportBuilder_1-traitPredictionsCorrelation" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
</div>
<div>
<div class="col-sm-12"></div>
</div>
<div>
<div class="form-group shiny-input-container">
<div class="checkbox">
<label>
<input id="reportBuilder_1-freqCor" type="checkbox" class="shiny-input-checkbox" checked="checked"/>
<span>Show frequency distribution</span>
</label>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->

<div style = "width:auto; height:auto; overflow:auto">

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-out1658d9a242795492" style="width:100%;height:400px;"></div><!--/html_preserve-->

</div>

### Predictions: Biplot by trait

The following graph allows to see the clustering of different genotypes in the TPE for each trait. This can help you identify clusters of environments and better define the TPE.

<p>&nbsp;</p>

<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-traitBiplot-label" for="reportBuilder_1-traitBiplot">Trait:</label>
<div>
<select id="reportBuilder_1-traitBiplot" class="shiny-input-select"><option value="DTF" selected>DTF</option>
<option value="EVV">EVV</option>
<option value="PACP">PACP</option>
<option value="GYKGPHA">GYKGPHA</option>
<option value="Emergence">Emergence</option>
<option value="PH">PH</option>
<option value="Canopy">Canopy</option>
<option value="HRR">HRR</option></select>
<script type="application/json" data-for="reportBuilder_1-traitBiplot" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->

<div style = "width:auto; height:auto; overflow:auto">

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-outbeddd76f31e936b9" style="width:100%;height:400px;"></div><!--/html_preserve-->

</div>

### Predictions: Merit estimates of top entries

In the left-side plot you can observe the comparison between the top 100 entries from each effect type category for the different traits. If a category has less than a 100 entries all individuals are displayed. This should allow you to identify the entries that could potentially become parents or nominated for advanced stages of evaluation. We would recommend you to wait until a selection index is calculated. In the right-side plot you can see a boxplot of the entire distribution of values for each effectType category so you know until which trait-values the rest of the entries that are not plotted in the left-side plot reach. 


<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-scatterMtaPredsType-label" for="reportBuilder_1-scatterMtaPredsType">Effect type:</label>
<div>
<select id="reportBuilder_1-scatterMtaPredsType" class="shiny-input-select"><option value="environment_designation" selected>environment_designation</option>
<option value="designation">designation</option></select>
<script type="application/json" data-for="reportBuilder_1-scatterMtaPredsType" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
</div>
<div>
<div class="col-sm-12"></div>
</div>
<div>
<div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-scatterMtaPredsTrait-label" for="reportBuilder_1-scatterMtaPredsTrait">Trait</label>
<div>
<select id="reportBuilder_1-scatterMtaPredsTrait" class="shiny-input-select"><option value="DTF" selected>DTF</option>
<option value="EVV">EVV</option>
<option value="PACP">PACP</option>
<option value="GYKGPHA">GYKGPHA</option>
<option value="Emergence">Emergence</option>
<option value="PH">PH</option>
<option value="Canopy">Canopy</option>
<option value="HRR">HRR</option></select>
<script type="application/json" data-for="reportBuilder_1-scatterMtaPredsTrait" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
</div>
<div>
<div class="col-sm-12"></div>
</div>
<div>
<div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-scatterMtaPredsEnvir-label" for="reportBuilder_1-scatterMtaPredsEnvir">Environment</label>
<div>
<select id="reportBuilder_1-scatterMtaPredsEnvir" class="shiny-input-select"><option value="(Intercept)" selected>(Intercept)</option>
<option value="2023_Ahero, Kenya_2">2023_Ahero, Kenya_2</option>
<option value="2023_Bujumbura, Burundi">2023_Bujumbura, Burundi</option>
<option value="2023_Dakawa, Morogoro, Tanzania">2023_Dakawa, Morogoro, Tanzania</option>
<option value="2023_Ifakara, Morogoro, Tanzania">2023_Ifakara, Morogoro, Tanzania</option>
<option value="2023_Mucelo, Mozambique">2023_Mucelo, Mozambique</option>
<option value="2023_Mwea, Kenya_1">2023_Mwea, Kenya_1</option>
<option value="2023_Mwea, Kenya_2">2023_Mwea, Kenya_2</option>
<option value="2023_TARI, Morogoro, Tanzania">2023_TARI, Morogoro, Tanzania</option>
<option value="2024_Dakawa, Morogoro, Tanzania">2024_Dakawa, Morogoro, Tanzania</option>
<option value="2024_Ifakara, Morogoro, Tanzania">2024_Ifakara, Morogoro, Tanzania</option>
<option value="2024_Kyela, Mbeya, Tanzania">2024_Kyela, Mbeya, Tanzania</option></select>
<script type="application/json" data-for="reportBuilder_1-scatterMtaPredsEnvir" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->

<div style = "width:auto; height:auto; overflow:auto">

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-outfeadaa3f740d85df" style="width:100%;height:400px;"></div><!--/html_preserve-->

</div>

### Predictions: Table of estimates 

The following table allows you to inspect the trait predictions in wide format together with the QTL profile (in case those are available) to understand the type of data that would be used to calculate a selection index (e.g., desire index).

<p>&nbsp;</p>

<!--html_preserve--><div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="reportBuilder_1-outab6cea5c8e3abd44" style="width:100%;height:auto;"></div><!--/html_preserve-->

### Predictions: Correlations between traits

The following heatmap and histogram allows to see the genetic correlations among traits calculated using across environment estimates of merit for the different traits. This can be used to understand the implications of selecting for a set of traits to achieve a product profile and make neccesary adjustment to the selection strategy.

<p>&nbsp;</p>

<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<div class="checkbox">
<label>
<input id="reportBuilder_1-freqCor" type="checkbox" class="shiny-input-checkbox" checked="checked"/>
<span>Show frequency distribution</span>
</label>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->

<div style = "width:auto; height:auto; overflow:auto">

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-outb894646b9a9dfdd3" style="width:100%;height:400px;"></div><!--/html_preserve-->

</div>

### Modeling parameters

This section aims to provide the modeling table for the analysis in order to keep track of which environments were used in the analysis, what was the final model used for each trait and other potentially important parameters for future reference.

<!--html_preserve--><div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="reportBuilder_1-out2a9babac72b4c6a1" style="width:100%;height:auto;"></div><!--/html_preserve-->


### References of methods used

Finlay, K. W., & Wilkinson, G. N. (1963). The analysis of adaptation in a plant-breeding programme. Australian journal of agricultural research, 14(6), 742-754.

Henderson Jr, C. R. (1982). Analysis of covariance in the mixed model: higher-level, nonhomogeneous, and random regressions. Biometrics, 623-640.

Odegard, J., Indahl, U., Stranden, I., & Meuwissen, T. H. (2018). Large-scale genomic prediction using singular value decomposition of the genotype matrix. Genetics Selection Evolution, 50(1), 1-12.

R Core Team (2021). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.

Boer M, van Rossum B (2022). LMMsolver: Linear Mixed Model Solver. R package version 1.0.4.9000.

Covarrubias-Pazaran G. (2024). lme4breeding: enabling genetic evaluation in the era of genomic data. bioRxiv, 2024-05.

Covarrubias-Pazaran G. (2016). Genome assisted prediction of quantitative traits using the R package sommer. PLoS ONE 11(6):1-15.

<p>&nbsp;</p>


<p>&nbsp;</p>

<!-- ### Percent check comparison to top 30 entries
 -->
<!-- The following plots allow the user to compare the top 30 entries against the different checks/benchmarks present in the dataset for each trait. The table below that shows the wide-table of all possible comparisons for all traits.
 -->

<!-- ```{r } -->
<!-- if (is.null(result)){ -->
<!--   # invisible(NULL) -->
<!-- } else { -->
<!--   result$status <- result$status#[1:6,] -->
<!--   idMta <- result$status[which(result$status$module == "mtaLmms"),"analysisId"] -->
<!--   idMta <- idMta[length(idMta)] -->
<!--   pred <- result$predictions -->
<!--   pred <- pred[pred$analysisId == idMta,] -->

<!--   traitChecks <- unique(pred$trait) -->

<!--   entryTypePresent <- table((unique(pred[,c("designation","entryType")]))$entryType) -->
<!--   check1 <- which(entryTypePresent < 200) -->
<!--   check2 <- grep("check|chck|bnchmark|benchmark|chek|chec", names(entryTypePresent), ignore.case = TRUE, value=FALSE) -->
<!--   checksFound <- intersect(check1,check2) -->
<!--   if(length(checksFound) > 0){ -->
<!--     labelChecks <- names(entryTypePresent)[checksFound] -->
<!--     nameOfChecks <- unique(pred[ which(pred$entryType %in% labelChecks) , "designation"]) -->

<!--     if("params" %in% ls()){ # we will download the document -->
<!--       shinyjs::hide() -->
<!--     }else{ -->
<!--       inputPanel( -->
<!--         selectInput(ns("checkMta"), -->
<!--                     label = "Check to compare to:", -->
<!--                     choices = nameOfChecks -->
<!--         ), -->
<!--         selectInput(ns("checkMtaTrait"), -->
<!--                     label = "View trait:", -->
<!--                     choices = traitChecks -->
<!--         ), -->
<!--       ) -->
<!--     } -->
<!--   }else{ -->
<!--     shinyjs::hide() -->
<!--   } -->

<!-- } -->
<!-- ``` -->

<!-- ```{r, results='asis', fig.height=20} -->
<!-- if (is.null(result)){ -->
<!--   # invisible(NULL) -->
<!-- } else { -->

<!--   if(length(checksFound) > 0){ -->

<!--     if("params" %in% ls()){ # we will download the document -->

<!--       cat(paste0("###   {.tabset .tabset-pills}    \n\n  ")) -->

<!--       for(iCheck in nameOfChecks){ -->

<!--         cat("\n\n####", iCheck, "{.tabset .tabset-pills}       \n\n") -->

<!--         for(iTrait in traitChecks){ -->

<!--           cat("\n\n#####", iTrait, "{.tabset .tabset-pills}       \n\n") -->

<!--           predListBench <- split(pred, pred$trait) -->
<!--           predListBench2 <- lapply(predListBench, function(x){ # x <- predListBench[[1]] -->
<!--             checkSelected <- which(x$designation == iCheck) -->
<!--             if(length(checkSelected) > 0){ -->
<!--               x$predictedValue2 <- ( (x$predictedValue / x$predictedValue[checkSelected]) - 1 ) * 100 -->
<!--               x$UB <- ( ( (x$predictedValue+x$stdError) / x$predictedValue[checkSelected]) - 1 ) * 100 -->
<!--               x$LB <- ( ( (x$predictedValue-x$stdError) / x$predictedValue[checkSelected]) - 1 ) * 100 -->
<!--               x <- x[with(x, order(-predictedValue2)), ] -->
<!--               x <- x[unique(c(1:min(c(30, nrow(x))),which(x$designation == iCheck ))),] -->
<!--               return(x) -->
<!--             } -->
<!--           }) -->
<!--           temp.pred.box.bench <- do.call(rbind, predListBench2) -->
<!--           temp.pred.box.bench$entryTypeSimple <- LETTERS[as.numeric(as.factor(temp.pred.box.bench$entryType))] -->
<!--           temp.pred.box.bench <- temp.pred.box.bench[which(temp.pred.box.bench$trait == iTrait),] -->
<!--           pb <- ggplot2::ggplot( -->
<!--             data = temp.pred.box.bench, -->
<!--             mapping = ggplot2::aes( -->
<!--               x = designation, # reorder(designation, -predictedValue2), -->
<!--               y = predictedValue2, -->
<!--               col = entryType, -->
<!--               text = paste( -->
<!--                 paste0('<br>', "designation: ", designation), -->
<!--                 paste0('<br>', "entry type: ", entryType), -->
<!--                 paste0('<br>', "predicted value: ", round(predictedValue2, 4)), -->
<!--                 # paste0('<br>', "standard error: ", round(stdError2, 4)), -->
<!--                 paste0("<br>predVal +- stdError: (", round(LB, 2) , ", ", -->
<!--                        round(UB, 4), ")")))) + -->
<!--             ggplot2::theme_classic() +  ggplot2::geom_point() + #facet_grid(~trait, scales = "free_x")+ -->
<!--             ggplot2::geom_errorbar(ggplot2::aes(ymax = UB,# predictedValue2 + stdError2, -->
<!--                                                 ymin = LB#predictedValue2 - stdError2 -->
<!--             ), position = ggplot2::position_dodge(0.5), -->
<!--             width = 0.10) + -->
<!--             ggplot2::labs(title = "Percentage over benchmark", x = "designation", y = "% over check entry", col = "Entry type") + ggplot2::geom_hline(yintercept=0, linetype='dotted', col = 'grey') + -->
<!--             ggplot2::theme(axis.text.x = ggplot2::element_blank(), legend.position = "bottom") + ggplot2::guides(fill=guide_legend(nrow=3,byrow=TRUE)) #+ ggplot2::facet_wrap(~trait, scales = "free", ncol=2) -->

<!--           print(htmltools::tagList(plotly::ggplotly(pb))) -->

<!--         } -->

<!--       } -->

<!--     }else{ -->

<!--       plotly::renderPlotly({ -->

<!--         predListBench <- split(pred, pred$trait) -->
<!--         predListBench2 <- lapply(predListBench, function(x){ # x <- predListBench[[1]] -->
<!--           checkSelected <- which(x$designation == input$checkMta) -->
<!--           if(length(checkSelected) > 0){ -->
<!--             x$predictedValue2 <- ( (x$predictedValue / x$predictedValue[checkSelected]) - 1 ) * 100 -->
<!--             x$UB <- ( ( (x$predictedValue+x$stdError) / x$predictedValue[checkSelected]) - 1 ) * 100 -->
<!--             x$LB <- ( ( (x$predictedValue-x$stdError) / x$predictedValue[checkSelected]) - 1 ) * 100 -->
<!--             x <- x[with(x, order(-predictedValue2)), ] -->
<!--             x <- x[unique(c(1:min(c(30, nrow(x))),which(x$designation == input$checkMta))),] -->
<!--             return(x) -->
<!--           } -->
<!--         }) -->
<!--         temp.pred.box.bench <- do.call(rbind, predListBench2) -->
<!--         temp.pred.box.bench$entryTypeSimple <- LETTERS[as.numeric(as.factor(temp.pred.box.bench$entryType))] -->
<!--         temp.pred.box.bench <- temp.pred.box.bench[which(temp.pred.box.bench$trait == input$checkMtaTrait),] -->
<!--         pb <- ggplot2::ggplot( -->
<!--           data = temp.pred.box.bench, -->
<!--           mapping = ggplot2::aes( -->
<!--             x = designation, # reorder(designation, -predictedValue2), -->
<!--             y = predictedValue2, -->
<!--             col = entryType, -->
<!--             text = paste( -->
<!--               paste0('<br>', "designation: ", designation), -->
<!--               paste0('<br>', "entry type: ", entryType), -->
<!--               paste0('<br>', "predicted value: ", round(predictedValue2, 4)), -->
<!--               # paste0('<br>', "standard error: ", round(stdError2, 4)), -->
<!--               paste0("<br>predVal +- stdError: (", round(LB, 2) , ", ", -->
<!--                      round(UB, 4), ")")))) + -->
<!--           ggplot2::theme_classic() +  ggplot2::geom_point() + #facet_grid(~trait, scales = "free_x")+ -->
<!--           ggplot2::geom_errorbar(ggplot2::aes(ymax = UB,# predictedValue2 + stdError2, -->
<!--                                               ymin = LB#predictedValue2 - stdError2 -->
<!--           ), position = ggplot2::position_dodge(0.5), -->
<!--           width = 0.10) + -->
<!--           ggplot2::labs(title = "Percentage over benchmark", x = "designation", y = "% over check entry", col = "Entry type") + ggplot2::geom_hline(yintercept=0, linetype='dotted', col = 'grey') + -->
<!--           ggplot2::theme(axis.text.x = ggplot2::element_blank(), legend.position = "bottom") + ggplot2::guides(fill=guide_legend(nrow=3,byrow=TRUE)) # + ggplot2::facet_wrap(~trait, scales = "free", ncol=2) -->
<!--         plotly::ggplotly(pb) -->

<!--       }) -->

<!--     } -->

<!--   } -->

<!-- } -->
<!-- ``` -->


