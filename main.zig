const std = @import("std");
const testing = std.testing;

///*start(u8) is starting location ( default 0 )
///*stop(u8) is location to finish
const substrOpt_u8 = union(enum) {
    start: u8 = 0,
    stop: u8,
};

pub const String_u8 = struct {
    ///*str([]const u8)
    str: []const u8,
    ///*opt(substrOpt_u8) Please see [insert link to union]
    pub fn substr(str: *String_u8, opt: substrOpt_u8) []const u8 {
        return str.str[opt.start..opt.stop];
    }
    ///*loc(u8)
    pub fn charAt(self: *String_u8, loc: u8) u8 {
        return self.str[loc];
    }
};

pub fn initialize_u8_String(string: []const u8) String_u8 {
    const tld: String_u8 = String_u8{ .str = string };
    return tld;
}
