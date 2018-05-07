# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.PercentileMetric do
  @moduledoc """
  Percentile Metric data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"startTime",
    :"endTime",
    :"timeGrain",
    :"unit",
    :"name",
    :"metricValues"
  ]

  @type t :: %__MODULE__{
    :"startTime" => DateTime.t,
    :"endTime" => DateTime.t,
    :"timeGrain" => String.t,
    :"unit" => UnitType,
    :"name" => MetricName,
    :"metricValues" => [PercentileMetricValue]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.PercentileMetric do
  import Microsoft.Azure.Management.Database.CosmosDb.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"unit", :struct, Microsoft.Azure.Management.Database.CosmosDb.Model.UnitType, options)
    |> deserialize(:"name", :struct, Microsoft.Azure.Management.Database.CosmosDb.Model.MetricName, options)
    |> deserialize(:"metricValues", :list, Microsoft.Azure.Management.Database.CosmosDb.Model.PercentileMetricValue, options)
  end
end

