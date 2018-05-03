# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.RoutePropertiesFormat do
  @moduledoc """
  Route resource
  """

  @derive [Poison.Encoder]
  defstruct [
    :"addressPrefix",
    :"nextHopType",
    :"nextHopIpAddress",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"addressPrefix" => String.t,
    :"nextHopType" => String.t,
    :"nextHopIpAddress" => String.t,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.RoutePropertiesFormat do
  def decode(value, _options) do
    value
  end
end

