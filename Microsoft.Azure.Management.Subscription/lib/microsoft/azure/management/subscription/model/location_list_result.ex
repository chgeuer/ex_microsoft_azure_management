# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Subscription.Model.LocationListResult do
  @moduledoc """
  Location list operation response.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => [Location]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Subscription.Model.LocationListResult do
  import Microsoft.Azure.Management.Subscription.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Subscription.Model.Location, options)
  end
end

