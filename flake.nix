{
  inputs.baselayer-ai-wasm-demo-aarch64-darwin.url = "https://flakehub.com/f/BaseLayer-AI/baselayer-ai-wasm-demo-aarch64-darwin/0.1.17";
  inputs.readme.url = "github:BaseLayer-AI/baselayer-ai.github.io/readme";

  outputs = { self, baselayer-ai-wasm-demo-aarch64-darwin, readme }: {
    packages.aarch64-darwin.demo = baselayer-ai-wasm-demo-aarch64-darwin.packages.aarch64-darwin.default;
    packages.aarch64-darwin.default = readme.packages.aarch64-darwin.default;
    packages.aarch64-linux.default = readme.packages.aarch64-linux.default;
    packages.x86_64-linux.default = readme.packages.x86_64-linux.default;
  };
}

