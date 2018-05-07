# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.MySql.Model.PerformanceTierListResult do
  @moduledoc """
  A list of performance tiers.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => [PerformanceTierProperties]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.MySql.Model.PerformanceTierListResult do
  import Microsoft.Azure.Management.Database.MySql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Database.MySql.Model.PerformanceTierProperties, options)
  end
end
