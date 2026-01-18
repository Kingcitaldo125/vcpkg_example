# Vcpkg example

Basic [Vcpkg](https://github.com/microsoft/vcpkg) example using Docker.

## Preamble
This project shows how vcpkg can be used to both specify project dependencies and resolve
those same dependencies.

Everything from dependency gathering using vcpkg to building and running an app that uses third-party dependencies
is exempified in this repo.

More info regarding what vcpkg is, and how it works, is described below.

## Vcpkg overview
Vcpkg is a lightweight package management system for C and C++ libraries that have roots tied back into GitHub.
Vcpkg works by effectively handling third-party dependencies for a project as git submodule clones and buildsystem invocations.

Whenever a project using Vcpkg is built, the vcpkg build for all project dependencies works out the dependency tree/hierarchy
for all dependencies, builds the dependencies in accordance to the dependency tree/hierarchy, and exposes the ABI to the rest
of the core project (headers, libs, and CMake files (package config files, modules, etc.)).

Since this approach doesn't use a binary package file format like many other package managers (rpm, pip, etc.),
and because version tracking isn't fully fleshed out for existing dependencies, in terms of forward or backwards compatibility,
this is why the term 'lightweight' is being used to describe vcpkg.

For more information regarding vcpkg, check out the [vcpkg github page](https://github.com/microsoft/vcpkg).

## Building
Build using Docker and the shell script:
```bash
./build.sh
```

## Running
Run with Docker:
```bash
docker run --rm vcpkg_example
```
