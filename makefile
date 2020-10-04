DCOMPILER = dmd

project_dir ?= $(CURDIR)
srcdir = $(project_dir)/src
objdir = $(project_dir)/obj
bindir = $(project_dir)/bin

appname = helloworld
appsrc = $(srcdir)/$(appname).d
app = $(bindir)/$(appname)

release: clean app-release
app-release:
	$(DCOMPILER) -release -O -od$(objdir) -of$(app) $(appsrc)

debug: clean app-debug
app-debug:
	$(DCOMPILER) -debug -od$(objdir) -of$(app) $(appsrc)

clean:
	-rm -f $(objdir)/*.o
	-rm -f $(bindir)/*

test: test-release

test-release: release test-nobuild

test-debug: debug test-nobuild

test-nobuild:
	$(app)
