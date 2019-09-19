FROM openanalytics/r-base
 
 
# system libraries of general use
RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    libssl1.0.0 \
    libxml2-dev 

 
# basic shiny functionality
RUN R -e "install.packages(c('devtools','dplyr','tidyr','ggplot2','shiny', 'rmarkdown','shinycssloaders','lubridate','plotly','leaflet','shinyproxy'), \
                            repos='https://cloud.r-project.org/')  ; \
                            devtools::install_github('vivienroussez/autoTS') "# install package autoTS from gitub
 
 
# copy the app to the image
RUN mkdir /root/autoTS_GUI
COPY app /root/autoTS_GUI
 
COPY Rprofile.site /usr/lib/R/etc/
 
EXPOSE 3838
 
CMD ["R", "-e", "shiny::runApp('/root/autoTS_GUI')"]
