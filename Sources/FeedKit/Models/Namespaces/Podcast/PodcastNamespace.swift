
import Foundation

public class PodcastNamespace {

/// https://github.com/Podcastindex-org/podcast-namespace/blob/main/docs/1.0.md
/// A wholistic RSS namespace for podcasting that is meant to synthesize the fragmented world of podcast namespaces. As elements are canonized, they will be added to this document so developers can begin implementation. The specifications below are considered locked and the team will prioritize backward compatibility. We are operating under the Rules for Standards-Makers.
/// If your application generates RSS feeds and you implement one or more elements below, you will need to link this DTD in your XML. <rss version="2.0" xmlns:podcast="https://github.com/Podcastindex-org/podcast-namespace/blob/main/docs/1.0.md">
    
    public var podcastChapters: PodcastChapters?
    
    public var podcastFunding: PodcastFunding?
        
    public init() { }
    
}

// MARK: - Equatable

extension PodcastNamespace: Equatable {
    
    public static func ==(lhs: PodcastNamespace, rhs: PodcastNamespace) -> Bool {
        return lhs.podcastChapters == rhs.podcastChapters &&
            lhs.podcastFunding == rhs.podcastFunding
    }
}
