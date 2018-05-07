# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.Container do
  @moduledoc """
  A container instance.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"properties" => ContainerProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.Container do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Containers.Model.ContainerProperties, options)
  end
end

