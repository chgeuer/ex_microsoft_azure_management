# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventHub.Model.RegenerateAccessKeyParameters do
  @moduledoc """
  Parameters supplied to the Regenerate Authorization Rule operation, specifies which key neeeds to be reset.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"keyType",
    :"key"
  ]

  @type t :: %__MODULE__{
    :"keyType" => String.t,
    :"key" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventHub.Model.RegenerateAccessKeyParameters do
  def decode(value, _options) do
    value
  end
end
