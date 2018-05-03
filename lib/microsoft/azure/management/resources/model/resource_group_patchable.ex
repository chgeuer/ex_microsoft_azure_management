# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.ResourceGroupPatchable do
  @moduledoc """
  Resource group information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"properties",
    :"managedBy",
    :"tags"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"properties" => ResourceGroupProperties,
    :"managedBy" => String.t,
    :"tags" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.ResourceGroupPatchable do
  import Microsoft.Azure.Management.Resources.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Resources.Model.ResourceGroupProperties, options)
  end
end

