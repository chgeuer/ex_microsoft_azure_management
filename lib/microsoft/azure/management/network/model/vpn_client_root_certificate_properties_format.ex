# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.VpnClientRootCertificatePropertiesFormat do
  @moduledoc """
  Properties of SSL certificates of application gateway
  """

  @derive [Poison.Encoder]
  defstruct [
    :"publicCertData",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"publicCertData" => String.t,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.VpnClientRootCertificatePropertiesFormat do
  def decode(value, _options) do
    value
  end
end
