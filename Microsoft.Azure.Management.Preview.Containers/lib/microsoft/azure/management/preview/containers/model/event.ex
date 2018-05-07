# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Model.Event do
  @moduledoc """
  A container group or container instance event.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"count",
    :"firstTimestamp",
    :"lastTimestamp",
    :"name",
    :"message",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"count" => integer(),
    :"firstTimestamp" => DateTime.t,
    :"lastTimestamp" => DateTime.t,
    :"name" => String.t,
    :"message" => String.t,
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Containers.Model.Event do
  def decode(value, _options) do
    value
  end
end
