# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.OperationPropertiesFormatServiceSpecification do
  @moduledoc """
  Specification of the service.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"metricSpecifications",
    :"logSpecifications"
  ]

  @type t :: %__MODULE__{
    :"metricSpecifications" => [MetricSpecification],
    :"logSpecifications" => [LogSpecification]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.OperationPropertiesFormatServiceSpecification do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metricSpecifications", :list, Microsoft.Azure.Management.Network.Model.MetricSpecification, options)
    |> deserialize(:"logSpecifications", :list, Microsoft.Azure.Management.Network.Model.LogSpecification, options)
  end
end

