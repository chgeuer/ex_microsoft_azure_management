# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewayBackendHealthHttpSettings do
  @moduledoc """
  Application gateway BackendHealthHttp settings.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"backendHttpSettings",
    :"servers"
  ]

  @type t :: %__MODULE__{
    :"backendHttpSettings" => ApplicationGatewayBackendHttpSettings,
    :"servers" => [ApplicationGatewayBackendHealthServer]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewayBackendHealthHttpSettings do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"backendHttpSettings", :struct, Microsoft.Azure.Management.Network.Model.ApplicationGatewayBackendHttpSettings, options)
    |> deserialize(:"servers", :list, Microsoft.Azure.Management.Network.Model.ApplicationGatewayBackendHealthServer, options)
  end
end

