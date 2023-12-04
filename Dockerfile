FROM ocaml/opam:debian-ocaml-4.12

RUN git clone -b waml https://github.com/WebAssembly/gc.git

RUN opam install dune

RUN eval $(opam env) && \
    cd gc/interpreter && \
    make install

RUN eval $(opam env) && \
    cd gc/proposals/gc/waml && \
    make

ENTRYPOINT ["gc/proposals/gc/waml/waml"]
