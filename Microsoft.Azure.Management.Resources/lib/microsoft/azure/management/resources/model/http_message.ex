# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.HttpMessage do
  @moduledoc """
  HTTP message.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content"
  ]

  @type t :: %__MODULE__{
    :"content" => Object
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.HttpMessage do
  import Microsoft.Azure.Management.Resources.Deserializer
  def decode(value, options) do
    value
    #|> deserialize(:"content", :struct, Microsoft.Azure.Management.Resources.Model.Object, options)
  end
end
