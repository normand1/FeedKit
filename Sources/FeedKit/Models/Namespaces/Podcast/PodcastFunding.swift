
import Foundation

/// https://github.com/Podcastindex-org/podcast-namespace/blob/main/docs/1.0.md
/// <podcast:funding> This tag lists possible donation/funding links for the podcast. The content of the tag is the recommended string to be used with the link.
///
/// Parent
/// <channel>
///
/// Attributes
/// url: The URL to be followed to fund the podcast.
///
/// Examples
/// <podcast:funding url="https://www.example.com/donations">Support the show!</podcast:funding>
/// <podcast:funding url="https://www.example.com/members">Become a member!</podcast:funding>

public class PodcastFunding {
    
    /// The attributes of the element.
    public class Attributes {
        
        /// The URL to be followed to fund the podcast.
        public var url: String?
    }
    
    /// The element's attributes.
    public var attributes: Attributes?
    
    public init() { }
    
}

// MARK: - Initializers

extension PodcastFunding {
    
    convenience init(attributes attributesDict: [String: String]) {
        self.init()
        self.attributes = PodcastFunding.Attributes(attributes: attributesDict)
    }
}

extension PodcastFunding.Attributes {
    
    convenience init?(attributes attributeDict: [String : String]) {
        
        if attributeDict.isEmpty {
            return nil
        }
        
        self.init()
        
        self.url = attributeDict["url"]
        
    }
    
}

// MARK: - Equatable

extension PodcastFunding: Equatable {
    
    public static func ==(lhs: PodcastFunding, rhs: PodcastFunding) -> Bool {
        return lhs.attributes == rhs.attributes
    }
    
}

extension PodcastFunding.Attributes: Equatable {
    
    public static func ==(lhs: PodcastFunding.Attributes, rhs: PodcastFunding.Attributes) -> Bool {
        return lhs.url == rhs.url
    }
    
}
