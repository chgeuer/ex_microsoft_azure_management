# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.PostgreSql.Model.VirtualNetworkRuleProperties do
  @moduledoc """
  Properties of a virtual network rule.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"virtualNetworkSubnetId",
    :"ignoreMissingVnetServiceEndpoint",
    :"state"
  ]

  @type t :: %__MODULE__{
    :"virtualNetworkSubnetId" => String.t,
    :"ignoreMissingVnetServiceEndpoint" => boolean(),
    :"state" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.PostgreSql.Model.VirtualNetworkRuleProperties do
  def decode(value, _options) do
    value
  end
end

