FROM rocker/verse

RUN /rocker_scripts/install_pandoc.sh
RUN /rocker_scripts/install_texlive.sh
RUN install2.r --error \
    markdown \
    plotly hexbin janitor ggmosaic ggrepel \
    gapminder babynames

RUN tlmgr init-usertree
RUN tlmgr update --self --all && \
  tlmgr install \
  caption float unicode-math koma-script tcolorbox pgf environ pdfcol bookmark \
  fancyhdr cleveref multirow listings \
  xcolor grffile titling amsmath kvsetkeys etoolbox \
  pdftexcmds infwarerr geometry fancyvrb framed booktabs \
  mdwtools epstopdf-pkg kvoptions ltxcmds auxhook bigintcalc \
  bitset etexcmds gettitlestring hycolor hyperref intcalc kvdefinekeys \
  letltxmacro pdfescape refcount rerunfilecheck stringenc uniquecounter \
  zapfding
