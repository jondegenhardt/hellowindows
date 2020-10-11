void main(string[] args)
{
    import std.stdio : writeln;
    writeln("Hello World!");

    /* Environment */
    writeln("--- Environment Info ---");
    version(Windows) writeln("  Windows");
    version(Win32) writeln("  Win32");
    version(Win64) writeln("  Win64");
    version(Posix) writeln("  Posix");
    version(linix) writeln("  Linux");
    version(OSX) writeln("  OSX");
    version(CRuntime_Bionic) writeln("  CRuntime_Bionic");
    version(CRuntime_DigitalMars) writeln("  CRuntime_DigitalMars");
    version(CRuntime_Glibc) writeln("  CRuntime_Glibc");
    version(CRuntime_Microsoft) writeln("  CRuntime_Microsoft");
    version(CRuntime_Musl) writeln("  CRuntime_Musl");
    version(CRuntime_UClibc) writeln("  CRuntime_UClibc");
    version(CRuntime_WASI) writeln("  CRuntime_WASI");
    version(CppRuntime_Clang) writeln("  CppRuntime_Clang");
    version(CppRuntime_DigitalMars) writeln("  CppRuntime_DigitalMars");
    version(CppRuntime_Gcc) writeln("  CppRuntime_Gcc");
    version(CppRuntime_Microsoft) writeln("  CppRuntime_Microsoft");
    version(CppRuntime_Sun) writeln("  CppRuntime_Sun");
    writeln("------");
    writeln();

    /* Some float format tests. */
    import std.format : format;

    writeln("Float format tests");

    writeln("writeln(format(\"%.2f\", 12.678)) => ", format("%.2f", 12.678));
    writeln("writeln(format(\"%.*f\", 12.678)) => ", format("%.*f", 2, 12.678));

    writeln("writeln(format(\"%.1f\", 0.06)) => ", format("%.1f", 0.06));
    writeln("writeln(format(\"%.*f\", 1, 0.06)) => ", format("%.*f", 1, 0.06));

    writeln("writeln(format(\"%.1f\", 1.06)) => ", format("%.1f", 1.06));
    writeln("writeln(format(\"%.*f\", 1, 1.06)) => ", format("%.*f", 1, 1.06));

    writeln("writeln(format(\"%.0f\", 0.6)) => ", format("%.0f", 0.6));
    writeln("writeln(format(\"%.*f\", 0, 0.6)) => ", format("%.*f", 0, 0.6));

    writeln("writeln(format(\"%.0f\", 1.6)) => ", format("%.0f", 1.6));
    writeln("writeln(format(\"%.*f\", 0, 1.6)) => ", format("%.*f", 0, 1.6));

    writeln("---------------");

    writeln("format(\"%.*f\", 0, 0.6) => ", format("%.*f", 0, 0.6));
    writeln("format(\"%.*f\", 1, 0.6) => ", format("%.*f", 1, 0.6));
    writeln("format(\"%.*f\", 0, 0.06) => ", format("%.*f", 0, 0.06));
    writeln("format(\"%.*f\", 1, 0.06) => ", format("%.*f", 1, 0.06));
    writeln("format(\"%.*f\", 2, 0.06) => ", format("%.*f", 2, 0.06));
    writeln("format(\"%.*f\", 3, 0.06) => ", format("%.*f", 3, 0.06));
    writeln("format(\"%.*f\", 0, 9.49999) => ", format("%.*f", 0, 9.49999));
    writeln("format(\"%.*f\", 1, 9.49999) => ", format("%.*f", 1, 9.49999));
    writeln("format(\"%.*f\", 0, 9.6) => ", format("%.*f", 0, 9.6));
    writeln("format(\"%.*f\", 1, 9.6) => ", format("%.*f", 1, 9.6));
    writeln("format(\"%.*f\", 0, 99.99) => ", format("%.*f", 0, 99.99));
    writeln("format(\"%.*f\", 1, 99.99) => ", format("%.*f", 1, 99.99));
    writeln("format(\"%.*f\", 2, 99.99) => ", format("%.*f", 2, 99.99));
    writeln("format(\"%.*f\", 3, 9999.9996) => ", format("%.*f", 3, 9999.9996));
    writeln("format(\"%.*f\", 4, 9999.9996) => ", format("%.*f", 4, 9999.9996));
    writeln("format(\"%.*f\", 4, 99999.99996) => ", format("%.*f", 4, 99999.99996));
    writeln("format(\"%.*f\", 5, 99999.99996) => ", format("%.*f", 5, 99999.99996));
    writeln("format(\"%.*f\", 5, 999999.999996) => ", format("%.*f", 5, 999999.999996));
    writeln("format(\"%.*f\", 6, 999999.999996) => ", format("%.*f", 6, 999999.999996));

    writeln("---------------");

    writeln("format(\"%.*f\", 0, -0.6) => ", format("%.*f", 0, -0.6));
    writeln("format(\"%.*f\", 1, -0.6) => ", format("%.*f", 1, -0.6));
    writeln("format(\"%.*f\", 0, -0.06) => ", format("%.*f", 0, -0.06));
    writeln("format(\"%.*f\", 1, -0.06) => ", format("%.*f", 1, -0.06));
    writeln("format(\"%.*f\", 2, -0.06) => ", format("%.*f", 2, -0.06));
    writeln("format(\"%.*f\", 3, -0.06) => ", format("%.*f", 3, -0.06));
    writeln("format(\"%.*f\", 0, -9.49999) => ", format("%.*f", 0, -9.49999));
    writeln("format(\"%.*f\", 1, -9.49999) => ", format("%.*f", 1, -9.49999));
    writeln("format(\"%.*f\", 0, -9.6) => ", format("%.*f", 0, -9.6));
    writeln("format(\"%.*f\", 1, -9.6) => ", format("%.*f", 1, -9.6));
    writeln("format(\"%.*f\", 0, -99.99) => ", format("%.*f", 0, -99.99));
    writeln("format(\"%.*f\", 1, -99.99) => ", format("%.*f", 1, -99.99));
    writeln("format(\"%.*f\", 2, -99.99) => ", format("%.*f", 2, -99.99));
    writeln("format(\"%.*f\", 3, -9999.9996) => ", format("%.*f", 3, -9999.9996));
    writeln("format(\"%.*f\", 4, -9999.9996) => ", format("%.*f", 4, -9999.9996));
    writeln("format(\"%.*f\", 4, -99999.99996) => ", format("%.*f", 4, -99999.99996));
    writeln("format(\"%.*f\", 5, -99999.99996) => ", format("%.*f", 5, -99999.99996));
    writeln("format(\"%.*f\", 5, -999999.999996) => ", format("%.*f", 5, -999999.999996));
    writeln("format(\"%.*f\", 6, -999999.999996) => ", format("%.*f", 6, -999999.999996));

    {
        /* Direct calls to snprintf (called by format). */

        import core.stdc.stdio : snprintf;
        import std.string : fromStringz, toStringz;
        char[512] buf;

        snprintf(buf.ptr, buf.length, "%.*f".toStringz, 0, 0.6);
        writeln("snfprintf(<buf>, <buf.length>, \"%.*f\", 0, 0.6) => ", buf.ptr.fromStringz);

        snprintf(buf.ptr, buf.length, "%.*f".toStringz, 1, 0.6);
        writeln("snfprintf(<buf>, <buf.length>, \"%.*f\", 1, 0.6) => ", buf.ptr.fromStringz);

        snprintf(buf.ptr, buf.length, "%.*f".toStringz, 0, 0.06);
        writeln("snfprintf(<buf>, <buf.length>, \"%.*f\", 0, 0.06) => ", buf.ptr.fromStringz);

        snprintf(buf.ptr, buf.length, "%.*f".toStringz, 1, 0.06);
        writeln("snfprintf(<buf>, <buf.length>, \"%.*f\", 1, 0.06) => ", buf.ptr.fromStringz);

        snprintf(buf.ptr, buf.length, "%.*f".toStringz, 2, 0.06);
        writeln("snfprintf(<buf>, <buf.length>, \"%.*f\", 2, 0.06) => ", buf.ptr.fromStringz);
    }
}
