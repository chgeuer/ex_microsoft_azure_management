# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.CnameRecord do
  @moduledoc """
  A CNAME record.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"cname"
  ]

  @type t :: %__MODULE__{
    :"cname" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.CnameRecord do
  def decode(value, _options) do
    value
  end
end

