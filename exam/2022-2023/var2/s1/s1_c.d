// TODO: Change the function's signature
void checkNumbers()
{
    // TODO
}

unittest
{    
    int[] arr1 = [10, 20, 30, 40, 64];
    double[] arr2 = [1.0, 2.0, 3.0, 4.0, 5.0];
    string[] arr3 = ["PCLP4", "SO", "IOCLA"];

    assert(checkNumbers(arr1) == [16, 32, 32, 64, 128]);
    assert(checkNumbers(arr2) == [2.0, 4.0, 4.0, 8.0, 8.0]);
    assert(checkNumbers(arr3) == ["IOCLA", "SO", "PCLP4"]);
}
