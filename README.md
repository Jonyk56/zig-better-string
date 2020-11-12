# zig-better-string
---

This is basically just a library that mimics the functions of the string class in Javascript.

Really simple to use. all you have to do is this:

```zig
const betterstr= @import("better-str.zig");
const std=@import("std");

pub fn main() void {
    const aBasicString= betterstr.initialize_u8_String("Hello World!\n");
    std.debug.print("{}", .{aBasicString});
}
```