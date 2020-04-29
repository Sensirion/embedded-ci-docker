FROM gcc:6.5

RUN apt-get update \
    && apt-get install -y zip clang-format-6.0 \
        pandoc \
        texlive-latex-recommended \
        texlive-fonts-recommended \
        texlive-xetex \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/
