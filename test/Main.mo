import Principal "mo:base/Principal";
import Text "mo:base/Text";
import Blob "mo:base/Blob";
import Array "mo:base/Array";
import AID "../src/AccountId";

actor {

  private let tests = [
    {
      data = [
      ] : [Word8];
      expect = 000 : Word8;
    },
    {
      data = [
        072, 101, 108, 108, 111, 032, 087, 111,
        114, 108, 100,
      ] : [Word8];
      expect = 037 : Word8;
    },
  ];

  public func run() {
    for (test in tests.vals()) {
      let expect = test.expect;
      let actual = CRC8.crc8(test.data);
      assert(expect == actual);
    };
  };
  public func run() {
    let input : Text = "m7b5y-itxyr-mr2gt-kvadr-2dity-bh3n5-ff7bb-vvm2v-3ftew-5wjtg-2qe";
    let expected : [Nat8] = [21, 163, 40, 49, 51, 29, 117, 43, 92, 76, 255, 91, 147, 81, 190, 168, 1, 93, 144, 242, 195, 131, 28, 111, 63, 202, 156, 82, 135, 164, 219, 255];
    assert(expected = AID.fromText(input, null));
  };
};