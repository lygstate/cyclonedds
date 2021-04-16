call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64_x86
cd /d "%~dp0"
rd /s /q build
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=install -DCMAKE_BUILD_TYPE=RelWithDebInfo "-DCMAKE_MSVC_RUNTIME_LIBRARY:STRING=MultiThreaded$<$<CONFIG:Debug>:Debug>" -DCMAKE_POLICY_DEFAULT_CMP0091:STRING=NEW -GNinja 
cmake .
ninja install
pause
