import Foundation

struct QuestionCodable: Codable {
    var text: String


        init(text: String) {
            self.text = text
        }

    // Implement the required initializer for Decodable
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        text = try container.decode(String.self, forKey: .text)
    }

    // Implement the required encode method for Encodable
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(text, forKey: .text)
    }

    // Add the CodingKeys enum to match your property names
    enum CodingKeys: String, CodingKey {
        case text
        // Add other cases if needed
    }
}
