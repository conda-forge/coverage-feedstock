%PYTHON% setup.py install --single-version-externally-managed --record record.txt

:: Remove versioned entrypoints.
%PYTHON% -c "import os; print('_'.join(os.environ['PY_VER'].split('.')[0]))" > temp.txt
set /p PY_VER_MAJ=<temp.txt
del temp.txt

del %BUILD_PREFIX%\Scripts\coverage%PY_VER_MAJ%-script.py
del %BUILD_PREFIX%\Scripts\coverage%PY_VER_MAJ%.exe
del %BUILD_PREFIX%\Scripts\coverage%PY_VER_MAJ%.exe.manifest

del %BUILD_PREFIX%\Scripts\coverage-%PY_VER%-script.py
del %BUILD_PREFIX%\Scripts\coverage-%PY_VER%.exe
del %BUILD_PREFIX%\Scripts\coverage-%PY_VER%.exe.manifest

dir /s "%BUILD_PREFIX%\Scripts\coverage*"
