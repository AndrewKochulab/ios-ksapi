import protocol ReactiveCocoa.OptionalType

internal extension Dictionary where Value: OptionalType {

  /**
   - returns: A new dictionary with `nil` values removed.
   */
  internal func compact() -> [Key:Value.Wrapped] {
    var ret: [Key:Value.Wrapped] = [:]
    for (key, value) in self {
      if let value = value.optional {
        ret[key] = value
      }
    }
    return ret
  }
}
