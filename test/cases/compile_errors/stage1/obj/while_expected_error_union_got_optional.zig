export fn foo() void {
    while (bar()) |x| {_ = x;} else |err| {_ = err;}
}
fn bar() ?i32 { return 1; }

// error
// backend=stage1
// target=native
//
// tmp.zig:2:15: error: expected error union type, found '?i32'
