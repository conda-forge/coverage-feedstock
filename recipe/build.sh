#!/bin/bash

if [[ "$use_noarch" == "true" ]]; then
  sed -i.bak 's/compile_extension = True/compile_extension = False/g' setup.py
fi

$PYTHON -m pip install . -vv

# Remove versioned entrypoints.
PY_VER_MAJ=$($PYTHON -c "import os; print('_'.join(os.environ['PY_VER'].split('.')[0]))")

rm "${PREFIX}/bin/coverage${PY_VER_MAJ}"
rm "${PREFIX}/bin/coverage-${PY_VER}"

ls $PREFIX/bin/coverage*
