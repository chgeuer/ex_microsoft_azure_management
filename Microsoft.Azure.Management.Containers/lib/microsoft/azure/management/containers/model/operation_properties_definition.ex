# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.OperationPropertiesDefinition do
  @moduledoc """
  The definition of Azure Monitoring properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"serviceSpecification"
  ]

  @type t :: %__MODULE__{
    :"serviceSpecification" => OperationServiceSpecificationDefinition
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.OperationPropertiesDefinition do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"serviceSpecification", :struct, Microsoft.Azure.Management.Containers.Model.OperationServiceSpecificationDefinition, options)
  end
end
