# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.Source do
  @moduledoc """
  The registry node that generated the event. Put differently, while the actor initiates the event, the source generates it.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"addr",
    :"instanceID"
  ]

  @type t :: %__MODULE__{
    :"addr" => String.t,
    :"instanceID" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.Source do
  def decode(value, _options) do
    value
  end
end

