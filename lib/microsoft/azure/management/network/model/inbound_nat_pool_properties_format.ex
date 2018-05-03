# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.InboundNatPoolPropertiesFormat do
  @moduledoc """
  Properties of Inbound NAT pool.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"frontendIPConfiguration",
    :"protocol",
    :"frontendPortRangeStart",
    :"frontendPortRangeEnd",
    :"backendPort",
    :"idleTimeoutInMinutes",
    :"enableFloatingIP",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"frontendIPConfiguration" => SubResource,
    :"protocol" => TransportProtocol,
    :"frontendPortRangeStart" => integer(),
    :"frontendPortRangeEnd" => integer(),
    :"backendPort" => integer(),
    :"idleTimeoutInMinutes" => integer(),
    :"enableFloatingIP" => boolean(),
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.InboundNatPoolPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"frontendIPConfiguration", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
    |> deserialize(:"protocol", :struct, Microsoft.Azure.Management.Network.Model.TransportProtocol, options)
  end
end
