# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.RunCommandDocument do
  @moduledoc """
  Describes the properties of a Run Command.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"$schema",
    :"id",
    :"osType",
    :"label",
    :"description"
  ]

  @type t :: %__MODULE__{
    :"$schema" => String.t,
    :"id" => String.t,
    :"osType" => String.t,
    :"label" => String.t,
    :"description" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.RunCommandDocument do
  def decode(value, _options) do
    value
  end
end

