# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.RegistryUpdateParameters do
  @moduledoc """
  The parameters for updating a container registry.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tags",
    :"sku",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"tags" => %{optional(String.t) => String.t},
    :"sku" => Sku,
    :"properties" => RegistryPropertiesUpdateParameters
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.RegistryUpdateParameters do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sku", :struct, Microsoft.Azure.Management.Containers.Model.Sku, options)
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Containers.Model.RegistryPropertiesUpdateParameters, options)
  end
end

