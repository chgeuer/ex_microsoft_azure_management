# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.DeleteOperationResult do
  @moduledoc """
  The result of the request or operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"boolean"
  ]

  @type t :: %__MODULE__{
    :"boolean" => boolean()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.DeleteOperationResult do
  def decode(value, _options) do
    value
  end
end

