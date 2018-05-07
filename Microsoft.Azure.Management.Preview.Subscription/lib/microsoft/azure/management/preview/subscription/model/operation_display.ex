# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Subscription.Model.OperationDisplay do
  @moduledoc """
  The object that represents the operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"provider",
    :"resource",
    :"operation"
  ]

  @type t :: %__MODULE__{
    :"provider" => String.t,
    :"resource" => String.t,
    :"operation" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Subscription.Model.OperationDisplay do
  def decode(value, _options) do
    value
  end
end

