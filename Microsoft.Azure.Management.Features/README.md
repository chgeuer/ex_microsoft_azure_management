# Microsoft.Azure.Management.Features

Azure Feature Exposure Control (AFEC) provides a mechanism for the resource providers to control feature exposure to users. Resource providers typically use this mechanism to provide public/private preview for new features prior to making them generally available. Users need to explicitly register for AFEC features to get access to such functionality.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_microsoft_azure_management_features` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_microsoft_azure_management_features, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_microsoft_azure_management_features](https://hexdocs.pm/ex_microsoft_azure_management_features).
