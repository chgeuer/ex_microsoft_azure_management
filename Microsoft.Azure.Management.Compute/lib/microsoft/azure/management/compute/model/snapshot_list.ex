# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.SnapshotList do
  @moduledoc """
  The List Snapshots operation response.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [Snapshot],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.SnapshotList do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Compute.Model.Snapshot, options)
  end
end
