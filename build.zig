const std = @import("std");
const Builder = std.build.Builder;
pub fn build(b: *Builder) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const hzzp_dep = b.dependency("hzzp", .{});
    const unit_tests = b.addTest(.{
        .root_source_file = .{ .path = "src/main.zig" },
        .target = target,
        .optimize = optimize,
    });
    unit_tests.addAnonymousModule("hzzp", .{
        .source_file = .{ .cwd_relative = hzzp_dep.builder.pathFromRoot("src/main.zig") },
    });
    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&unit_tests.step);
}
