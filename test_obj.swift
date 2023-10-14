import Foundation

func main()
{
}


class A
{
    @objc func B()
    {
    }
}


class B: A
{
    override func B()
    {
    }
}


let b = B()
b.B()
