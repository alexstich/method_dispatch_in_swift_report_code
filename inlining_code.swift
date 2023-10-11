// Inlining code
struct Point {
    let x: Int
    let y: Int
    func draw() {
        print("x: \(x), y: \(y)")
    }
}
func draw(point: Point) {
    point.draw()
    print("point is drawn")
}
    
// ... initial code
let p1 = Point(x: 0, y: 0)
draw(point: p1)

// ... after inlining code
let p1 = Point(x: 0, y: 0)
print("x: \(p1.x), y: \(p1.y)")
print("point is drawn")
