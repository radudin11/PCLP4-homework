int[] foo(int[] a, int[] b)
in
{
    assert(a.length == b.length);
}
do
{
    if (a.length == 1)
        return a ~ b;
    size_t d = a.length / 2;
    return foo(a[0 .. d], b[0 .. d]) ~ foo(a[d .. $], b[d .. $]);
}

unittest
{
    // TODO: modify `a` and `b` to make this test pass.
    int[] a = [];
    int[] b = [];
    assert(foo(a, b) == [10, 4, 1, 4, 2, 5, 2, 11]);
}
