# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Subscription.Model.ErrorResponse do
  @moduledoc """
  Describes the format of Error response.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"code",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"code" => String.t,
    :"message" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Subscription.Model.ErrorResponse do
  def decode(value, _options) do
    value
  end
end
