void main(string[] args)
{
    import std.stdio : writeln;
    writeln("Hello World!");

    /* Some float format tests. */
    import std.format : format;

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
}
