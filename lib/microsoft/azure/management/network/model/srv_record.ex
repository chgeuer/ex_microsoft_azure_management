# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.SrvRecord do
  @moduledoc """
  An SRV record.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"priority",
    :"weight",
    :"port",
    :"target"
  ]

  @type t :: %__MODULE__{
    :"priority" => integer(),
    :"weight" => integer(),
    :"port" => integer(),
    :"target" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.SrvRecord do
  def decode(value, _options) do
    value
  end
end

