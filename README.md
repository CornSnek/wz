# wz
(The purpose of this fork was trying to test to see how Zig modules interact with each other, and to use this library)

[![Linux Workflow Status](https://img.shields.io/github/workflow/status/truemedian/wz/Linux?label=Linux&style=for-the-badge)](https://github.com/truemedian/wz/actions/workflows/linux.yml)
[![Windows Workflow Status](https://img.shields.io/github/workflow/status/truemedian/wz/Windows?label=Windows&style=for-the-badge)](https://github.com/truemedian/wz/actions/workflows/windows.yml)
[![MacOS Workflow Status](https://img.shields.io/github/workflow/status/truemedian/wz/MacOS?label=MacOS&style=for-the-badge)](https://github.com/truemedian/wz/actions/workflows/macos.yml)

An I/O agnostic WebSocket 1.3 library for Zig.

Currently untested, contributions towards a test suite are appreciated.

## Features

* Performs no allocations, uses a single buffer for all parsing.
* Works with any Reader and Writer.

## Notes

* wz does **not** buffer either reads or writes, if you prefer the performance boost such buffering provides, you must
  provide your own buffered Reader and Writers.

## Examples

**Coming Soon...**
