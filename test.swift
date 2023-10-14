
class A 
{
    func A()
    {
    }

    func B()
    {
    }
}

class B: A 
{
    override func B()
    {
    }
}


let b: B = B()
b.B()
