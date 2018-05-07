# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.EventRequestMessage do
  @moduledoc """
  The event request message sent to the service URI.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content",
    :"headers",
    :"method",
    :"requestUri",
    :"version"
  ]

  @type t :: %__MODULE__{
    :"content" => EventContent,
    :"headers" => %{optional(String.t) => String.t},
    :"method" => String.t,
    :"requestUri" => String.t,
    :"version" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.EventRequestMessage do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"content", :struct, Microsoft.Azure.Management.Containers.Model.EventContent, options)
  end
end
