# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ARecord do
  @moduledoc """
  An A record.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ipv4Address"
  ]

  @type t :: %__MODULE__{
    :"ipv4Address" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ARecord do
  def decode(value, _options) do
    value
  end
end

