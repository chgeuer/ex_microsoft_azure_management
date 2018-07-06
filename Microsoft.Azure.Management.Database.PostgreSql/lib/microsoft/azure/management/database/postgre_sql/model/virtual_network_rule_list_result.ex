# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.PostgreSql.Model.VirtualNetworkRuleListResult do
  @moduledoc """
  A list of virtual network rules.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [VirtualNetworkRule],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.PostgreSql.Model.VirtualNetworkRuleListResult do
  import Microsoft.Azure.Management.Database.PostgreSql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Database.PostgreSql.Model.VirtualNetworkRule, options)
  end
end
