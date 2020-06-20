#emcc -o hello2.html hello.c -O2 -s WASM=1 --shell-file html_template/shell_minimal.html -s NO_EXIT_RUNTIME=1  -s "EXTRA_EXPORTED_RUNTIME_METHODS=['_malloc', 'ccall', 'cwrap']"
emcc -o hello3.html hello.cpp -O2 -s WASM=1 --shell-file html_template/shell_minimal.html -s NO_EXIT_RUNTIME=1  -s "EXTRA_EXPORTED_RUNTIME_METHODS=['_malloc', 'ccall', 'cwrap', 'myfunction']"
#emcc -o hello2.html hello.cpp --emrun -s WASM=1 -O3 -s WASM=1 --shell-file html_template/shell_minimal.html -s NO_EXIT_RUNTIME=1  -s "EXTRA_EXPORTED_RUNTIME_METHODS=['ccall']"
#emcc -Os -s STANDALONE_WASM -s EXPORTED_FUNCTIONS="['_myfunction']" -Wl,--no-entry "hello.cpp" -o "caesar.wasm"
#rm hello.wasm
#mv hello2.wasm hello.wasm
#rm hello2*
python -m SimpleHTTPServer
