// Commands examples

// swiftc -emit-sil -Onone test.swift | xcrun swift-demangle > test.silgen 
// clang -S test.m
// xcrun swift-demangle s4main1bAA1BCvp
// xcrun swift-demangle 23witness_tables_gen_code3CatV8makeMrrryyF


// To get method pointer

// swiftc -g vtables.swift && lldb vtables -s <(echo -e "br set -n main -s vtables\nrun")
// (lldb) image lookup -rs type\ descriptor vtables
// (lldb) x/2wx `0x0000000100003f00 + 44`
// (lldb) x/6wd `0x0000000100003f00 + 44`
// (lldb) platform shell nm vtables | grep "go" | xcrun swift-demangle
