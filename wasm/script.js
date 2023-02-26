let wasmExports = null;

var wasmImports = {};

 var info = {
   env: wasmImports,
   wasi_snapshot_preview1: wasmImports,
 };

// an asynchronous function that will be used to load the wasm file
const loadWasm = async () => {
  // fetch the wasm file
  let res = await fetch("add.wasm")
  // convert the response to a byte array
  let bytes = await res.arrayBuffer();

  // initiate a new web assembly object
  let wasmObj = await WebAssembly.instantiate(bytes, info);
  wasmExports = wasmObj.instance.exports;
};

loadWasm();

// emcc add.c -o add.html