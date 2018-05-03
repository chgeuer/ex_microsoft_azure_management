# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitServiceProviderProperties do
  @moduledoc """
  Contains ServiceProviderProperties in an ExpressRouteCircuit.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"serviceProviderName",
    :"peeringLocation",
    :"bandwidthInMbps"
  ]

  @type t :: %__MODULE__{
    :"serviceProviderName" => String.t,
    :"peeringLocation" => String.t,
    :"bandwidthInMbps" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitServiceProviderProperties do
  def decode(value, _options) do
    value
  end
end
