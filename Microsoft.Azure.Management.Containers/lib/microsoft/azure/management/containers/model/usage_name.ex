# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.UsageName do
  @moduledoc """
  The name object of the resource
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"localizedValue"
  ]

  @type t :: %__MODULE__{
    :"value" => String.t,
    :"localizedValue" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.UsageName do
  def decode(value, _options) do
    value
  end
end

