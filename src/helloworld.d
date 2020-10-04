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

}
