FROM gitpod/workspace-full

USER gitpod

# Install REPLXX
RUN git clone https://github.com/AmokHuginnsson/replxx.git \
    && cd replxx \
    && mkdir -p build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && make \
    && sudo make install

RUN bash -cl "cargo install bindgen"
