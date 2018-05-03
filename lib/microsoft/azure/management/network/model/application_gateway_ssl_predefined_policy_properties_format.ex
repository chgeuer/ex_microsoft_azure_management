# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewaySslPredefinedPolicyPropertiesFormat do
  @moduledoc """
  Properties of ApplicationGatewaySslPredefinedPolicy
  """

  @derive [Poison.Encoder]
  defstruct [
    :"cipherSuites",
    :"minProtocolVersion"
  ]

  @type t :: %__MODULE__{
    :"cipherSuites" => [CipherSuitesEnum],
    :"minProtocolVersion" => ProtocolsEnum
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewaySslPredefinedPolicyPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cipherSuites", :list, Microsoft.Azure.Management.Network.Model.CipherSuitesEnum, options)
    |> deserialize(:"minProtocolVersion", :struct, Microsoft.Azure.Management.Network.Model.ProtocolsEnum, options)
  end
end

