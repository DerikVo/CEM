---
title: "Parent Academy Class Attendance"
author: "Derik Vo"
date: '2022-06-01'
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r library, include=FALSE}
library(tidyverse)
```
## Assinging Certificates CSV
Assigning the CSV of what parents earned a certificate to  'Cert'

```{r Cert, include=TRUE}
Cert <- read.csv("R_certificate.csv")
```

## Summary of data table

```{r Summary}
summary(Cert)
```
## Bar Graph of classes

Assigns the bar graph function to ClassPlot
```{r Classplot}
ClassPlot <- ggplot(data = Cert) +geom_bar(mapping = aes(x=Name.of.Class))
```

## Tilting x axis text

Added a text them to make labels on the X axis turn 45 degrees, so its easier to read
```{r XAxist}
ClassPlot +theme(axis.text = element_text(angle = 45, vjust=1,hjust=1))
```
