# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventHub.Model.Destination do
  @moduledoc """
  Capture storage details for capture description
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"properties" => DestinationProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventHub.Model.Destination do
  import Microsoft.Azure.Management.EventHub.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.EventHub.Model.DestinationProperties, options)
  end
end
