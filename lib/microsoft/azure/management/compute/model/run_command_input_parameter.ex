# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.RunCommandInputParameter do
  @moduledoc """
  Describes the properties of a run command parameter.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"value" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.RunCommandInputParameter do
  def decode(value, _options) do
    value
  end
end

