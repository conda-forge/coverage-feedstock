#!/bin/bash

which python
python setup.py install --single-version-externally-managed --record record.txt

# Remove versioned entrypoints.
PY_VER_MAJ=$(python -c "import os; print('_'.join(os.environ['PY_VER'].split('.')[0]))")

ls ${PREFIX}/bin
rm "${PREFIX}/bin/coverage-${PY_VER}"

ls $PREFIX/bin/coverage*
