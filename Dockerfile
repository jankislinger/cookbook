FROM rocker/verse

RUN /rocker_scripts/install_pandoc.sh
RUN /rocker_scripts/install_texlive.sh
RUN install2.r --error gapminder babynames markdown plotly
