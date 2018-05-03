# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.VpnClientParameters do
  @moduledoc """
  Vpn Client Parameters for package generation
  """

  @derive [Poison.Encoder]
  defstruct [
    :"processorArchitecture",
    :"authenticationMethod",
    :"radiusServerAuthCertificate",
    :"clientRootCertificates"
  ]

  @type t :: %__MODULE__{
    :"processorArchitecture" => String.t,
    :"authenticationMethod" => String.t,
    :"radiusServerAuthCertificate" => String.t,
    :"clientRootCertificates" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.VpnClientParameters do
  def decode(value, _options) do
    value
  end
end

