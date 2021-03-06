# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.ManagedClusterListResult do
  @moduledoc """
  The response from the List Managed Clusters operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [ManagedCluster],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.ManagedClusterListResult do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Containers.Model.ManagedCluster, options)
  end
end

