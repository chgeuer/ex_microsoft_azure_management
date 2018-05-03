# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ConnectivityIssue do
  @moduledoc """
  Information about an issue encountered in the process of checking for connectivity.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"origin",
    :"severity",
    :"type",
    :"context"
  ]

  @type t :: %__MODULE__{
    :"origin" => String.t,
    :"severity" => String.t,
    :"type" => String.t,
    :"context" => [IssueContext]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ConnectivityIssue do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"context", :list, Microsoft.Azure.Management.Network.Model.IssueContext, options)
  end
end

