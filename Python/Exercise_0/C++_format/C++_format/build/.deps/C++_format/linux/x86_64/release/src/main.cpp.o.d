{
    depfiles = "main.o: src/main.cpp\
",
    values = {
        "/usr/sbin/g++",
        {
            "-m64",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
            "-O3",
            "-std=c++23",
            "-DNDEBUG"
        }
    },
    files = {
        "src/main.cpp"
    },
    depfiles_format = "gcc"
}