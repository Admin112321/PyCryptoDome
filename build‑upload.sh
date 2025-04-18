#!/usr/bin/env bash
# install cibuildwheel if you haven't already
pip install --upgrade pip setuptools wheel cibuildwheel

export CIBW_ARCHS_MACOS="arm64"
export CIBW_BUILD="cp310-*"
export CIBW_SKIP="pp*"
export CIBW_COMPILER="clang"

# unpack source
tar xzf pycryptodome-3.22.0.tar.gz
cd pycryptodome-3.22.0

# build
cibuildwheel --output-dir dist
