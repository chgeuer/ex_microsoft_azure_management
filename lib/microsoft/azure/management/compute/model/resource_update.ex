# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.ResourceUpdate do
  @moduledoc """
  The Resource model definition.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tags",
    :"sku"
  ]

  @type t :: %__MODULE__{
    :"tags" => %{optional(String.t) => String.t},
    :"sku" => DiskSku
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.ResourceUpdate do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sku", :struct, Microsoft.Azure.Management.Compute.Model.DiskSku, options)
  end
end
