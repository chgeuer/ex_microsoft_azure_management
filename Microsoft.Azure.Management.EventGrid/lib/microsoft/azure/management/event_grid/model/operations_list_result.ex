# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventGrid.Model.OperationsListResult do
  @moduledoc """
  Result of the List Operations operation
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => [Operation]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventGrid.Model.OperationsListResult do
  import Microsoft.Azure.Management.EventGrid.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.EventGrid.Model.Operation, options)
  end
end

