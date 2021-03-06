# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.ContainerPort do
  @moduledoc """
  The port exposed on the container instance.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"protocol",
    :"port"
  ]

  @type t :: %__MODULE__{
    :"protocol" => String.t,
    :"port" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.ContainerPort do
  def decode(value, _options) do
    value
  end
end

