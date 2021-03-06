# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.UsageListResult do
  @moduledoc """
  The response containing the usage data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => [Usage]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.UsageListResult do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Containers.Model.Usage, options)
  end
end

