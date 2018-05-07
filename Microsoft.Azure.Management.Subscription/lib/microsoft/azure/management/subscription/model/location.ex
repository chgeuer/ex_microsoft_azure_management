# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Subscription.Model.Location do
  @moduledoc """
  Location information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"subscriptionId",
    :"name",
    :"displayName",
    :"latitude",
    :"longitude"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"subscriptionId" => String.t,
    :"name" => String.t,
    :"displayName" => String.t,
    :"latitude" => String.t,
    :"longitude" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Subscription.Model.Location do
  def decode(value, _options) do
    value
  end
end

