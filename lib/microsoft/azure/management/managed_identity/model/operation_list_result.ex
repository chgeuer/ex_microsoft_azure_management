# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.ManagedIdentity.Model.OperationListResult do
  @moduledoc """
  A list of operations supported by Microsoft.ManagedIdentity Resource Provider.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [Operation],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.ManagedIdentity.Model.OperationListResult do
  import Microsoft.Azure.Management.ManagedIdentity.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.ManagedIdentity.Model.Operation, options)
  end
end

