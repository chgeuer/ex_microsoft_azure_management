# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.BotService.Model.SkuName do
  @moduledoc """
  The name of SKU.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.BotService.Model.SkuName do
  def decode(value, _options) do
    value
  end
end

