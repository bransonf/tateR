FROM rocker/r-ver:3.6.0

LABEL maintainer="bransonf@wustl.edu"

RUN R -e "install.packages(c('shiny','shinydashboard'))"

RUN mkdir /shiny

COPY  app/* /shiny/

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/shiny', port = 3838, host = '0.0.0.0')"] 