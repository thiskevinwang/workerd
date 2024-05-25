# Copyright (c) 2017-2022 Cloudflare, Inc.
# Licensed under the Apache 2.0 license found in the LICENSE file or at:
#     https://opensource.org/licenses/Apache-2.0

@0x8b3d4aaa36221ec9;

using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("workerd");
$Cxx.allowCancellation;

enum Features {
  test @0;

  # We want to determine how users typically read the data from a Blob.
  # The reason is so that we can determine how best to optimize the Blob
  # implementation.
  blobAsArrayBuffer @1;
  blobAsText @2;
  blobAsStream @3;
  blobGetData @4;
}
