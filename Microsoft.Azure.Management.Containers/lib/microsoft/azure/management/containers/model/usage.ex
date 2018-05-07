# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.Usage do
  @moduledoc """
  A single usage result
  """

  @derive [Poison.Encoder]
  defstruct [
    :"unit",
    :"currentValue",
    :"limit",
    :"name"
  ]

  @type t :: %__MODULE__{
    :"unit" => String.t,
    :"currentValue" => integer(),
    :"limit" => integer(),
    :"name" => UsageName
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.Usage do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"name", :struct, Microsoft.Azure.Management.Containers.Model.UsageName, options)
  end
end

