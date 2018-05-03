# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.DdosProtectionPlanPropertiesFormat do
  @moduledoc """
  DDoS protection plan properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"resourceGuid",
    :"provisioningState",
    :"virtualNetworks"
  ]

  @type t :: %__MODULE__{
    :"resourceGuid" => String.t,
    :"provisioningState" => String.t,
    :"virtualNetworks" => [SubResource]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.DdosProtectionPlanPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"virtualNetworks", :list, Microsoft.Azure.Management.Network.Model.SubResource, options)
  end
end

