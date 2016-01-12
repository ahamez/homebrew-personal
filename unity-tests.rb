class UnityTests < Formula
  desc ""
  homepage ""
  head "https://github.com/ThrowTheSwitch/Unity.git"

  def install
    system "clang -g -O3 -Wall -shared -I./src -I./extras/fixture/src/ ./src/unity.c ./extras/fixture/src/unity_fixture.c -o libunity.dylib"
    lib.install "libunity.dylib"
    include.install "src/unity.h"
    include.install "src/unity_internals.h"
    include.install "extras/fixture/src/unity_fixture_internals.h"
    include.install "extras/fixture/src/unity_fixture_malloc_overrides.h"
    include.install "extras/fixture/src/unity_fixture.h"
  end

  test do
    system "false"
  end
end
