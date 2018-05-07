# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.MetricValue do
  @moduledoc """
  Represents metrics values.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"_count",
    :"average",
    :"maximum",
    :"minimum",
    :"timestamp",
    :"total"
  ]

  @type t :: %__MODULE__{
    :"_count" => float(),
    :"average" => float(),
    :"maximum" => float(),
    :"minimum" => float(),
    :"timestamp" => DateTime.t,
    :"total" => float()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.MetricValue do
  def decode(value, _options) do
    value
  end
end

