const std = @import("std");
const Builder = std.build.Builder;
pub fn build(b: *Builder) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const hzzp_dep = b.dependency("hzzp", .{});
    const hzzp_mod = b.addModule("hzzp", .{ .source_file = .{
        .path = hzzp_dep.builder.pathFromRoot(hzzp_dep.module("hzzp").source_file.path),
    } });
    _ = b.addModule("wz", .{
        .source_file = .{ .path = "src/main.zig" },
        .dependencies = &.{.{ .name = "hzzp", .module = hzzp_mod }},
    });
    const unit_tests = b.addTest(.{
        .root_source_file = .{ .path = "src/main.zig" },
        .target = target,
        .optimize = optimize,
    });
    unit_tests.addModule("hzzp", hzzp_mod);
    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&unit_tests.step);
}
