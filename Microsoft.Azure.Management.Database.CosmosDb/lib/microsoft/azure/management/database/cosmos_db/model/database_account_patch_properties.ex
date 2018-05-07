# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.DatabaseAccountPatchProperties do
  @moduledoc """
  Properties to update Azure Cosmos DB database accounts.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"capabilities"
  ]

  @type t :: %__MODULE__{
    :"capabilities" => [Capability]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.DatabaseAccountPatchProperties do
  import Microsoft.Azure.Management.Database.CosmosDb.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"capabilities", :list, Microsoft.Azure.Management.Database.CosmosDb.Model.Capability, options)
  end
end

