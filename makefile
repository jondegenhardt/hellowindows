DCOMPILER = dmd

project_dir ?= $(CURDIR)
srcdir = $(project_dir)/src
objdir = $(project_dir)/obj
bindir = $(project_dir)/bin

appname = helloworld
appsrc = $(srcdir)/$(appname).d
app = $(bindir)/$(appname)

release: $(app)
$(app): $(appsrc)
	$(DCOMPILER) -release -O -od$(objdir) -of$(app) $(appsrc)

clean:
	-rm $(objdir)/*.o
	-rm $(bindir)/*

test: release test-nobuild

test-nobuild:
	$(app)
