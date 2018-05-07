# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionRoutesTableSummary do
  @moduledoc """
  The routes table associated with the ExpressRouteCircuit.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"neighbor",
    :"asn",
    :"upDown",
    :"stateOrPrefixesReceived"
  ]

  @type t :: %__MODULE__{
    :"neighbor" => String.t,
    :"asn" => integer(),
    :"upDown" => String.t,
    :"stateOrPrefixesReceived" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionRoutesTableSummary do
  def decode(value, _options) do
    value
  end
end
