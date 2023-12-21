# Copyright 2023 Ant Group Co., Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")


def interconnection_deps():
    maybe(
        http_archive,
        name = "rules_proto",
        sha256 = "dc3fb206a2cb3441b485eb1e423165b231235a1ea9b031b4433cf7bc1fa460dd",
        strip_prefix = "rules_proto-5.3.0-21.7",
        urls = [
            "https://github.com/bazelbuild/rules_proto/archive/refs/tags/5.3.0-21.7.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "rules_python",
        sha256 = "0a8003b044294d7840ac7d9d73eef05d6ceb682d7516781a4ec62eeb34702578",
        strip_prefix = "rules_python-0.24.0",
        urls = [
            "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.24.0.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "com_google_protobuf",
        sha256 = "e815887fcd7d5a91e94c1efbf46d48b6db32928c14f71987f6018f7afd115983",
        strip_prefix = "protobuf-3.19.6",
        type = "tar.gz",
        urls = [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.19.6/protobuf-all-3.19.6.tar.gz",
        ],
    )
