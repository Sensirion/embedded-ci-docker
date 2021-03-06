FROM gcc:7.5

RUN apt-get update \
    && apt-get install --no-install-recommends -y zip clang-format-6.0 \
        clang-format-7 \
        pandoc \
        texlive-latex-recommended \
        texlive-fonts-recommended \
        texlive-xetex \
        latexmk \
        doxygen \
        python3-pip \
        cpputest \
        cppcheck \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

RUN update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-6.0 100
