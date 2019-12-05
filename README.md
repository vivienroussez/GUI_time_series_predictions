# Presentation

This repo contains the source code of the autoTS GUI. This GUI is a shiny app that allows you to test the [autoTS package](https://github.com/vivienroussez/autots) without any knowledge of R.

To run the shiny app locally, just run the app.R file from Rstudio in the "app" subfolder. If you want to build a docker image (eg to host in a shinyproxy instance on the Group datalake), just go to this directory and type :


```
docker build -t autots/gui .
```
# Contact

Pull requests are very welcome in case you want to add features or contact the A1 group CoE (Vivien Roussez) for bug corrections.