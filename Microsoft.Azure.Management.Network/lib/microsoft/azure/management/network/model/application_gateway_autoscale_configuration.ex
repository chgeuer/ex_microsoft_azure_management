# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewayAutoscaleConfiguration do
  @moduledoc """
  Application Gateway autoscale configuration.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bounds"
  ]

  @type t :: %__MODULE__{
    :"bounds" => ApplicationGatewayAutoscaleBounds
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewayAutoscaleConfiguration do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bounds", :struct, Microsoft.Azure.Management.Network.Model.ApplicationGatewayAutoscaleBounds, options)
  end
end
