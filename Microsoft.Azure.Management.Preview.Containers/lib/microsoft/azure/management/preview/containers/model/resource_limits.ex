# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Model.ResourceLimits do
  @moduledoc """
  The resource limits.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"memoryInGB",
    :"cpu"
  ]

  @type t :: %__MODULE__{
    :"memoryInGB" => float(),
    :"cpu" => float()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Containers.Model.ResourceLimits do
  def decode(value, _options) do
    value
  end
end

