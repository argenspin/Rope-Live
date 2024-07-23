@echo off
setlocal


:: Get the current directory
set "current_dir=%cd%"

:: Construct the full path to TensorRT-10.2.0.19
set "tensorrt_path=%current_dir%\TensorRT-10.2.0.19\lib"

set "PATH=%tensorrt_path%;%PATH%"

:: Activate conda environment and run the Python script
call conda activate Rope
python Rope.py
pause

endlocal
