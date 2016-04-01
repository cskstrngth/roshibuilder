FROM google/golang

# Build statically-linkned roshi-server in cskstrngth/roshidocker
RUN mkdir -p /work && \
    cd /work && \
    git clone https://github.com/cskstrngth/roshidocker && \
    cd /work/roshidocker/_vendor/src/github.com/soundcloud/roshi/roshi-server/ && \
    export GOPATH=/work/roshidocker/_vendor/ && \
    GOPATH=`pwd`/../_vendor:$GOPATH CGO_ENABLED=0 go build -a -ldflags '-s' && \
    cp roshi-server /work/roshidocker && \
    cd /work/roshidocker

# Build the minimalist Docker image    
CMD docker build -t cskstrngth/roshidocker /work/roshidocker