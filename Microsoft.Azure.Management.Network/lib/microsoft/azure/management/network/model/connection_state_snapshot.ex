# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ConnectionStateSnapshot do
  @moduledoc """
  Connection state snapshot.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"connectionState",
    :"startTime",
    :"endTime",
    :"evaluationState",
    :"hops"
  ]

  @type t :: %__MODULE__{
    :"connectionState" => String.t,
    :"startTime" => DateTime.t,
    :"endTime" => DateTime.t,
    :"evaluationState" => String.t,
    :"hops" => [ConnectivityHop]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ConnectionStateSnapshot do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"hops", :list, Microsoft.Azure.Management.Network.Model.ConnectivityHop, options)
  end
end

