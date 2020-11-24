
import Foundation

/// https://github.com/Podcastindex-org/podcast-namespace/blob/main/docs/1.0.md
///
/// <podcast:chapters> Links to an external file (see example file) containing chapter data for the episode. See the jsonChapters.md file for a description of the chapter file syntax. And, see the example.json example file for a real world example.
///
/// Parent
/// <item>
///
/// Attributes
/// url: The URL where the chapters file is located.
/// type: Mime type of file - JSON prefered, 'application/json+chapters'.
///
/// Examples:
/// <podcast:chapters url="https://example.com/episode1/chapters.json" type="application/json+chapters" />

public class PodcastChapters {
    
    /// The attributes of the element.
    public class Attributes {
        
        /// The url to the json chapters file
        public var url: String?
    }
    
    /// The element's attributes.
    public var attributes: Attributes?
        
    public init() { }
    
}

// MARK: - Initializers

extension PodcastChapters {
    
    convenience init(attributes attributesDict: [String: String]) {
        self.init()
        self.attributes = PodcastChapters.Attributes(attributes: attributesDict)
    }
}

extension PodcastChapters.Attributes {
    
    convenience init?(attributes attributeDict: [String : String]) {
        
        if attributeDict.isEmpty {
            return nil
        }
        
        self.init()
        
        self.url = attributeDict["url"]
        
    }
    
}

// MARK: - Equatable

extension PodcastChapters: Equatable {
    
    public static func ==(lhs: PodcastChapters, rhs: PodcastChapters) -> Bool {
        return lhs.attributes == rhs.attributes
    }
    
}

extension PodcastChapters.Attributes: Equatable {
    
    public static func ==(lhs: PodcastChapters.Attributes, rhs: PodcastChapters.Attributes) -> Bool {
        return lhs.url == rhs.url
    }
    
}
