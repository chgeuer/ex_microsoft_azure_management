# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewayRedirectConfigurationPropertiesFormat do
  @moduledoc """
  Properties of redirect configuration of the application gateway.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"redirectType",
    :"targetListener",
    :"targetUrl",
    :"includePath",
    :"includeQueryString",
    :"requestRoutingRules",
    :"urlPathMaps",
    :"pathRules"
  ]

  @type t :: %__MODULE__{
    :"redirectType" => RedirectTypeEnum,
    :"targetListener" => SubResource,
    :"targetUrl" => String.t,
    :"includePath" => boolean(),
    :"includeQueryString" => boolean(),
    :"requestRoutingRules" => [SubResource],
    :"urlPathMaps" => [SubResource],
    :"pathRules" => [SubResource]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewayRedirectConfigurationPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"redirectType", :struct, Microsoft.Azure.Management.Network.Model.RedirectTypeEnum, options)
    |> deserialize(:"targetListener", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
    |> deserialize(:"requestRoutingRules", :list, Microsoft.Azure.Management.Network.Model.SubResource, options)
    |> deserialize(:"urlPathMaps", :list, Microsoft.Azure.Management.Network.Model.SubResource, options)
    |> deserialize(:"pathRules", :list, Microsoft.Azure.Management.Network.Model.SubResource, options)
  end
end

