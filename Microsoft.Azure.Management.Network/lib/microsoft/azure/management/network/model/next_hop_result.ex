# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.NextHopResult do
  @moduledoc """
  The information about next hop from the specified VM.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"nextHopType",
    :"nextHopIpAddress",
    :"routeTableId"
  ]

  @type t :: %__MODULE__{
    :"nextHopType" => String.t,
    :"nextHopIpAddress" => String.t,
    :"routeTableId" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.NextHopResult do
  def decode(value, _options) do
    value
  end
end

