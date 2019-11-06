FROM cphtum/debian-cmake-texlive:latest

# install build tools
RUN apt update && apt install --no-install-recommends -y \
  cmake \
  doxygen \
  g++ \
  gfortran \
  git \
  lcov \
  make \
  python3-dev \
  python3-pip \
  python3-setuptools \
  swig \
  unzip \
  wget \
  zlib1g-dev
RUN yes | pip3 install coverxygen gcovr || true

# install required libraries
RUN apt update && apt install --no-install-recommends -y \
  libhdf5-dev
