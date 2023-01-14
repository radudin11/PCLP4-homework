int[string] mergeAAs(int[string] a, int[string] b)
{
    // TODO
}

unittest
{
    int[string] a = ["a": 1, "b": 2];
    int[string] b = ["c": 3, "d": 4];
    assert(mergeAAs(a, b) == ["a": 1, "b": 2, "c": 3, "d": 4]);

    int[string] c = ["ab": 1, "cd": 2];
    int[string] d = ["cd": 3, "xy": 4];
    assert(mergeAAs(c, d) == ["ab": 1, "cd": 3, "xy": 4]);
}
