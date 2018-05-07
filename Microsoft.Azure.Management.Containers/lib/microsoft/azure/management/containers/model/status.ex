# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.Status do
  @moduledoc """
  The status of an Azure resource at the time the operation was called.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayStatus",
    :"message",
    :"timestamp"
  ]

  @type t :: %__MODULE__{
    :"displayStatus" => String.t,
    :"message" => String.t,
    :"timestamp" => DateTime.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.Status do
  def decode(value, _options) do
    value
  end
end
