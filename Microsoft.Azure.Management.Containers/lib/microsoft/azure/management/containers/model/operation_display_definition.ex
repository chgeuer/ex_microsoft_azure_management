# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.OperationDisplayDefinition do
  @moduledoc """
  The display information for a container registry operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"provider",
    :"resource",
    :"operation",
    :"description"
  ]

  @type t :: %__MODULE__{
    :"provider" => String.t,
    :"resource" => String.t,
    :"operation" => String.t,
    :"description" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.OperationDisplayDefinition do
  def decode(value, _options) do
    value
  end
end

