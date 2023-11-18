import Foundation

struct QuestionCodable: Codable {
    var text: String


        init(text: String) {
            self.text = text
        }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        text = try container.decode(String.self, forKey: .text)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(text, forKey: .text)
    }

    enum CodingKeys: String, CodingKey {
        case text
    }
}
