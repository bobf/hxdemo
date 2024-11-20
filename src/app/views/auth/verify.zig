const std = @import("std");
const jetzig = @import("jetzig");

pub fn post(request: *jetzig.Request) !jetzig.View {
    const Params = struct { email: []const u8, password: []const u8 };
    const params = try request.expectParams(Params) orelse {
        return request.fail(.unprocessable_entity);
    };
    var root = try request.data(.object);
    try root.put("email", params.email);
    try root.put("password", params.password);
    return request.render(.created);
}

test "post" {
    var app = try jetzig.testing.app(std.testing.allocator, @import("routes"));
    defer app.deinit();

    const response = try app.request(.POST, "/auth/verify", .{});
    try response.expectStatus(.created);
}
