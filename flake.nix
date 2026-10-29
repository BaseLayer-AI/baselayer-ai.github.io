{
  inputs.baselayer-ai-wasm-demo-aarch64-darwin.url = "https://flakehub.com/f/BaseLayer-AI/baselayer-ai-wasm-demo-aarch64-darwin/0.1.17";

  outputs = { self, baselayer-ai-wasm-demo-aarch64-darwin }: {
    packages.aarch64-darwin = {
      demo = baselayer-ai-wasm-demo-aarch64-darwin.packages.aarch64-darwin.default;
      default = baselayer-ai-wasm-demo-aarch64-darwin.packages.aarch64-darwin.default;
    };
  };
}

