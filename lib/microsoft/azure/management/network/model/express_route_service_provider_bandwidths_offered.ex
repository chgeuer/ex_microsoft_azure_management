# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ExpressRouteServiceProviderBandwidthsOffered do
  @moduledoc """
  Contains bandwidths offered in ExpressRouteServiceProvider resources.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"offerName",
    :"valueInMbps"
  ]

  @type t :: %__MODULE__{
    :"offerName" => String.t,
    :"valueInMbps" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ExpressRouteServiceProviderBandwidthsOffered do
  def decode(value, _options) do
    value
  end
end

