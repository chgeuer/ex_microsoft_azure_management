# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.BotService.Model.OperationDisplayInfo do
  @moduledoc """
  The operation supported by Bot Service Management.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"operation",
    :"provider",
    :"resource"
  ]

  @type t :: %__MODULE__{
    :"description" => String.t,
    :"operation" => String.t,
    :"provider" => String.t,
    :"resource" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.BotService.Model.OperationDisplayInfo do
  def decode(value, _options) do
    value
  end
end

