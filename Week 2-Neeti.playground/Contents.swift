import UIKit
import PlaygroundSupport

let sz = CGSize(width: 200, height: 100)
let renderer = UIGraphicsImageRenderer(size: sz)

let image = renderer.image { context in
    
    UIColor.red.setFill()
    context.fill(CGRect(x: 0, y: 0, width: 50, height: 100))
    UIColor.green.setFill()
    context.fill(CGRect(x: 50, y: 0, width: 50, height: 50))
    UIColor.yellow.setFill()
    context.fill(CGRect(x: 100, y: 0, width: 50, height: 50))
    UIColor.black.setFill()
    context.fill(CGRect(x: 150, y: 0, width: 50, height: 50))

    UIColor.darkGray.setStroke()
    context.stroke(renderer.format.bounds)
    
    var rt = renderer.format.bounds
    rt = rt.insetBy(dx: 10, dy: 10)
    context.stroke(rt)

    for _ in 1...3 {
        rt = rt.insetBy(dx: 1, dy: 1)
        context.stroke(rt)
    }
    
}

image

