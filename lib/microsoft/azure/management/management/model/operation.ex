# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Management.Model.Operation do
  @moduledoc """
  Operation supported by the Microsoft.Management resource provider.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"display"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"display" => OperationDisplayProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Management.Model.Operation do
  import Microsoft.Azure.Management.Management.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"display", :struct, Microsoft.Azure.Management.Management.Model.OperationDisplayProperties, options)
  end
end

