# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.TargetResource do
  @moduledoc """
  Target resource.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"resourceName",
    :"resourceType"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"resourceName" => String.t,
    :"resourceType" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.TargetResource do
  def decode(value, _options) do
    value
  end
end

