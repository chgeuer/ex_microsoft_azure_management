# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ZoneUpdate do
  @moduledoc """
  Describes a request to update a DNS zone.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tags"
  ]

  @type t :: %__MODULE__{
    :"tags" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ZoneUpdate do
  def decode(value, _options) do
    value
  end
end
