# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.Operation do
  @moduledoc """
  Network REST API operation definition.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"display",
    :"origin",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"display" => OperationDisplay,
    :"origin" => String.t,
    :"properties" => OperationPropertiesFormat
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.Operation do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"display", :struct, Microsoft.Azure.Management.Network.Model.OperationDisplay, options)
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Network.Model.OperationPropertiesFormat, options)
  end
end

