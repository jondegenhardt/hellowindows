## Identify the compiler as dmd, ldc, or gdc

DFLAGS =
compiler_type =

ifndef DCOMPILER
	DCOMPILER = dmd
	compiler_type = dmd
else
	compiler_name = $(notdir $(basename $(DCOMPILER)))

	ifeq ($(compiler_name),dmd)
		compiler_type = dmd
	else ifeq ($(compiler_name),ldc)
		compiler_type = ldc
	else ifeq ($(compiler_name),ldc2)
		compiler_type = ldc
	else ifeq ($(compiler_name),gdc)
		compiler_type = gdc
	else ifeq ($(findstring dmd,$(compiler_name)),dmd)
		compiler_type = dmd
	else ifeq ($(findstring ldc,$(compiler_name)),ldc)
		compiler_type = ldc
	else ifeq ($(findstring gdc,$(compiler_name)),gdc)
		compiler_type = gdc
	else
		compiler_type = dmd
	endif
endif

## Compiler specific flags

debug_flag =
ifeq ($(compiler_type),dmd)
	debug_flag = -debug
else ifeq ($(compiler_type),ldc)
	debug_flag = --d-debug
else ifeq ($(compiler_type),gdc)
	debug_flag = -fdebug
else
	debug_flag = -debug
endif

release_flag =
ifeq ($(compiler_type),dmd)
	release_flag = -release
else ifeq ($(compiler_type),ldc)
	release_flag = --release
else ifeq ($(compiler_type),gdc)
	release_flag = -frelease
else
	release_flag = -release
endif

## Application stuff

project_dir ?= $(CURDIR)
srcdir = $(project_dir)/src
objdir = $(project_dir)/obj
bindir = $(project_dir)/bin

appname = helloworld
appsrc = $(srcdir)/$(appname).d
app = $(bindir)/$(appname)

release: clean app-release
app-release:
	$(DCOMPILER) $(release_flag) -O -od$(objdir) -of$(app) $(appsrc) $(DFLAGS)

debug: clean app-debug
app-debug:
	$(DCOMPILER) $(debug_flag) -od$(objdir) -of$(app) $(appsrc) $(DFLAGS)

clean:
	-rm -f $(objdir)/*.o
	-rm -f $(bindir)/*

test: test-release

test-release: release test-nobuild

test-debug: debug test-nobuild

test-nobuild:
	$(app)
