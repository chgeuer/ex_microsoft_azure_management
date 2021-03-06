# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.ContainerExecRequest do
  @moduledoc """
  The start container exec request.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"command",
    :"terminalSize"
  ]

  @type t :: %__MODULE__{
    :"command" => String.t,
    :"terminalSize" => ContainerExecRequestTerminalSize
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.ContainerExecRequest do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"terminalSize", :struct, Microsoft.Azure.Management.Containers.Model.ContainerExecRequestTerminalSize, options)
  end
end

