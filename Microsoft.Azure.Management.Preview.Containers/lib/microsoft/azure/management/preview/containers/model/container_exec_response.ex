# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Model.ContainerExecResponse do
  @moduledoc """
  The information for the container exec command.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"webSocketUri",
    :"password"
  ]

  @type t :: %__MODULE__{
    :"webSocketUri" => String.t,
    :"password" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Containers.Model.ContainerExecResponse do
  def decode(value, _options) do
    value
  end
end
