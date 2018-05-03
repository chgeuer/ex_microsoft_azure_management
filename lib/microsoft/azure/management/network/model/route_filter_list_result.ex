# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.RouteFilterListResult do
  @moduledoc """
  Response for the ListRouteFilters API service call.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [RouteFilter],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.RouteFilterListResult do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Network.Model.RouteFilter, options)
  end
end

