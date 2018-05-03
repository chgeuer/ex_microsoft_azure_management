# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewayFrontendPortPropertiesFormat do
  @moduledoc """
  Properties of Frontend port of an application gateway.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"port",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"port" => integer(),
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewayFrontendPortPropertiesFormat do
  def decode(value, _options) do
    value
  end
end

