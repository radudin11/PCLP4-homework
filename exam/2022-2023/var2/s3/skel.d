import std.stdio;
import core.memory;

struct LeStruct
{
    int* field;

    this(int val)
    {
        debug
        {
            writeln("hello le struct");
        }
        field = new int(1);
        *field = val;
    }

    ~this()
    {
        debug
        {
            writeln("bye bye le struct");
        }
    }
}

class LeClass(T)
{
    T* val;

    this(T* val)
    {
        debug
        {
            write("hello: ");
            writeln(*(*val).field);
        }

        this.val = val;
    }

    ~this()
    {
        debug
        {
            writeln("bye bye le class ");
        }
    }
}

void makeMeNoGC()
{
    auto sObj = new LeStruct(2);
    auto cObj = new LeClass!LeStruct(sObj);

    debug
    {
        writeln("All going well");
    }
}

void main()
{
    makeMeNoGC();
}
