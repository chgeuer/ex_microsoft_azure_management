# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Management.Model.EntityInfoProperties do
  @moduledoc """
  The generic properties of an entity.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tenantId",
    :"displayName",
    :"parent",
    :"permissions"
  ]

  @type t :: %__MODULE__{
    :"tenantId" => String.t,
    :"displayName" => String.t,
    :"parent" => EntityParentGroupInfo,
    :"permissions" => Permissions
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Management.Model.EntityInfoProperties do
  import Microsoft.Azure.Management.Management.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"parent", :struct, Microsoft.Azure.Management.Management.Model.EntityParentGroupInfo, options)
    |> deserialize(:"permissions", :struct, Microsoft.Azure.Management.Management.Model.Permissions, options)
  end
end

