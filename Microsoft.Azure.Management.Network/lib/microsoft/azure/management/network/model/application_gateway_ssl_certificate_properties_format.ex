# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewaySslCertificatePropertiesFormat do
  @moduledoc """
  Properties of SSL certificates of an application gateway.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"data",
    :"password",
    :"publicCertData",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"data" => String.t,
    :"password" => String.t,
    :"publicCertData" => String.t,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewaySslCertificatePropertiesFormat do
  def decode(value, _options) do
    value
  end
end
