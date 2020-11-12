const str = @import("better-str.zig");
const std = @import("std");

pub fn main() void {
    const t=str.initialize_u8_String("hello world!");
    std.debug.print("{}", .{t.str});
}