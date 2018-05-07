# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewayIpConfigurationPropertiesFormat do
  @moduledoc """
  Properties of IP configuration of an application gateway.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"subnet",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"subnet" => SubResource,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewayIpConfigurationPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"subnet", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
  end
end
