# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.TopologyParameters do
  @moduledoc """
  Parameters that define the representation of topology.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"targetResourceGroupName",
    :"targetVirtualNetwork",
    :"targetSubnet"
  ]

  @type t :: %__MODULE__{
    :"targetResourceGroupName" => String.t,
    :"targetVirtualNetwork" => SubResource,
    :"targetSubnet" => SubResource
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.TopologyParameters do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"targetVirtualNetwork", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
    |> deserialize(:"targetSubnet", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
  end
end

