# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.GenericResourceFilter do
  @moduledoc """
  Resource filter.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"resourceType",
    :"tagname",
    :"tagvalue"
  ]

  @type t :: %__MODULE__{
    :"resourceType" => String.t,
    :"tagname" => String.t,
    :"tagvalue" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.GenericResourceFilter do
  def decode(value, _options) do
    value
  end
end
