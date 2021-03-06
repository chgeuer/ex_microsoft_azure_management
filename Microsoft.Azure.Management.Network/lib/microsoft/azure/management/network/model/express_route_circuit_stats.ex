# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitStats do
  @moduledoc """
  Contains stats associated with the peering.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"primarybytesIn",
    :"primarybytesOut",
    :"secondarybytesIn",
    :"secondarybytesOut"
  ]

  @type t :: %__MODULE__{
    :"primarybytesIn" => integer(),
    :"primarybytesOut" => integer(),
    :"secondarybytesIn" => integer(),
    :"secondarybytesOut" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitStats do
  def decode(value, _options) do
    value
  end
end

