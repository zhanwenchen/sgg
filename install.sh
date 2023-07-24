GNUMAKEFLAGS=-j12 MAKEFLAGS=-j12 HOMEBREW_VERBOSE=1 arch -arm64 brew install --build-from-source cmake pkg-config hdf5-mpi jpeg-turbo libtiff little-cms2 openjpeg webp libraqm freetype rust apache-arrow
conda activate sgg2
conda install python=3.10

CC="mpicc" HDF5_MPI="ON" HDF5_DIR=/opt/homebrew/opt/hdf5-mpi pip install --no-binary :all: h5py

# mplsetup.cf only contains these two lines:
# [libs]
# system_freetype = true
MPLSETUPCFG=/Users/zhanwenchen/mplsetup.cfg JPEG_ROOT=/opt/homebrew/opt/jpeg-turbo pip install --no-binary :all: --only-binary torch,torchvision,torchaudio cython dill pandas tqdm networkx transformers datasets torch torchvision torchaudio pycocotools
