# Motoko AccountId Library
Convert principal/subaccount pairs to AccoundIds (for sending ICPts via the ledger canister).

You can use the hex library to convert the [Nat8] output to hexidcimal (matching addresses in NNS etc).

```
import Principal "mo:base/Principal";
import Text "mo:base/Text";
import Blob "mo:base/Blob";
import Array "mo:base/Array";
import AID "./AccountId";

actor{
    public func test(t : Text) : async [Nat8] {
      return AID.fromText(t, null);
    };
};
```
