# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.Logs do
  @moduledoc """
  The logs.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content"
  ]

  @type t :: %__MODULE__{
    :"content" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.Logs do
  def decode(value, _options) do
    value
  end
end

