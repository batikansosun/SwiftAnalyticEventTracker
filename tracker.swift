
public protocol TrackableEventModel{
    var action:String { get set }
    var name:String {get set}
}


public struct EDRLoginEventModel: TrackableEventModel,Codable {
    public var action = "Login"
    public var name = "Login Name"
}



public protocol TrackableEventService {
    var services: [EventService] { get }
}

public enum EventService {
    case edrTracking(params: [TrackableEventModel])
    case googleAnalytics(name: String = "", params: [TrackableEventModel])
}

public protocol EdrTrackingService {
    var defaultParameters: [String: String] { get }
    var url: URL { get }
    
    func track(params: [TrackableEventModel])
}

public extension EdrTrackingService {
    func track(params: [TrackableEventModel]) {
        print(params) // root implementation
    }

}

public protocol GoogleAnalyticService {
    func sendEvent(name: String, params: [TrackableEventModel])
}

public extension GoogleAnalyticService {
    func sendEvent(name: String, params: [TrackableEventModel]){
        print("\(name) \(params)") // root implementation
    }
}



public protocol CoreEventTracker {
    var edrTrackingService: EdrTrackingService { get set }
    var googleAnalyticService: GoogleAnalyticService { get set }
    
    func track(_ trackable: TrackableEventService)
}

public extension CoreEventTracker {
    func track(_ trackable: TrackableEventService) {
        trackable.services.forEach { provider in
            switch provider {
            case .edrTracking(let params):
                edrTrackingService.track(params: params)
            case .googleAnalytics(let name, let params):
                googleAnalyticService.sendEvent(name: name, params: params)
            }
        }
    }
}


public class SHBProEdrTrackingService: EdrTrackingService {
    public var url: URL { URL(string: "https://edr-collect.com/")!}
    
    public var defaultParameters: [String: String] { ["":""]}
    public init() {}
    
    public func track(params: [TrackableEventModel]) {
        print("\(params) override") // override implementation
        // encode model
        // go service
    }

}

public class SHBProGoogleAnalyticService: GoogleAnalyticService {
    public init() {}
    public func sendEvent(name: String, params: [TrackableEventModel]) {
        print("\(name) \(params) override") // override implementation
        // encode model
        //
    }

}
    
   
//Modular Analytic Definition
final public class SHBProTracker: CoreEventTracker {
    public var googleAnalyticService: GoogleAnalyticService
    public var edrTrackingService: EdrTrackingService
    
    public init(googleAnalyticService: GoogleAnalyticService = SHBProGoogleAnalyticService(), edrTrackingService: EdrTrackingService = SHBProEdrTrackingService()) {
        self.googleAnalyticService = googleAnalyticService
        self.edrTrackingService = edrTrackingService
    }
}


// Custom Event Item
struct SHBProLoginEvent: TrackableEventService {
    
    // customizable event params and whatever
    var params: [TrackableEventModel] = [EDRLoginEventModel()]
    var name:String  = " bla bla"
    
    var services: [EventService] { [.googleAnalytics(name: name, params: params), .edrTracking(params: params)] }
}


// Create instance and begin track.
var tracker:CoreEventTracker = SHBProTracker()
tracker.track(SHBProLoginEvent())
