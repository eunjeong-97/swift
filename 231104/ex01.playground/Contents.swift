import UIKit

enum Month {
    case jan, feb, mar
    case apr, may, jun
    case jul, aug, sep
    case oct, nov, dec
    
    func printMonth(){
        switch self {
        case .jan, .feb, .mar:
            print("")
        case .apr, .may, .jun:
            print("")
        case .jul, .aug, .sep:
            print("")
        case .oct, .nov, .dec:
            print("")
        }
    }
}

Month.apr.printMonth()
Month.dec.printMonth()

