
import Foundation

/// https://github.com/Podcastindex-org/podcast-namespace/blob/main/docs/1.0.md
///
/// <podcast:chapters> Links to an external file (see example file) containing chapter data for the episode. See the jsonChapters.md file for a description of the chapter file syntax. And, see the example.json example file for a real world example.
///
/// Parent
/// <item>
///
/// Attributes
/// url: The URL where the transcript file is located.
/// type: Mime type of file - SRT prefered, 'application/srt'.
///
/// Examples:
/// <podcast:transcript url="https://example.com/episode1/transcript.txt" type="application/srt" />

public class PodcastTranscript {
    
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

extension PodcastTranscript {
    
    convenience init(attributes attributesDict: [String: String]) {
        self.init()
        self.attributes = PodcastTranscript.Attributes(attributes: attributesDict)
    }
}

extension PodcastTranscript.Attributes {
    
    convenience init?(attributes attributeDict: [String : String]) {
        
        if attributeDict.isEmpty {
            return nil
        }
        
        self.init()
        
        self.url = attributeDict["url"]
        
    }
    
}

// MARK: - Equatable

extension PodcastTranscript: Equatable {
    
    public static func ==(lhs: PodcastTranscript, rhs: PodcastTranscript) -> Bool {
        return lhs.attributes == rhs.attributes
    }
    
}

extension PodcastTranscript.Attributes: Equatable {
    
    public static func ==(lhs: PodcastTranscript.Attributes, rhs: PodcastTranscript.Attributes) -> Bool {
        return lhs.url == rhs.url
    }
    
}
