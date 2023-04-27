#!/bin/bash
set +eux

sed -i 's/absl:copts\//absl\/copts:/' $@
sed -i 's/hdrs =/exported_headers =/' $@
sed -i 's/cc_/cxx_/' $@
sed -i 's/deps/exported_deps/' $@
sed -i 's/:__subpackages__/\/.../' $@
sed -i 's/copts =/compiler_flags =/' $@
sed -i 's/linkopts =/linker_flags =/' $@
sed -i 's/\/\/visibility:public/PUBLIC/' $@
sed -i '/licenses/d' $@
sed -i '/testonly =/d' $@
sed -i '/size =/d' $@
sed -i '/default_visibility/d' $@
sed -i '/visibility:private/d' $@
sed -i 's/\/\(\w*\)"/\/\1:\1\"/' $@
sed -i 's/@com_google_googletest/googletest/' $@
