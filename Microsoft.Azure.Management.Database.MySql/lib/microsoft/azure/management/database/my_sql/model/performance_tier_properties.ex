# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.MySql.Model.PerformanceTierProperties do
  @moduledoc """
  Performance tier properties
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"serviceLevelObjectives"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"serviceLevelObjectives" => [PerformanceTierServiceLevelObjectives]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.MySql.Model.PerformanceTierProperties do
  import Microsoft.Azure.Management.Database.MySql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"serviceLevelObjectives", :list, Microsoft.Azure.Management.Database.MySql.Model.PerformanceTierServiceLevelObjectives, options)
  end
end

