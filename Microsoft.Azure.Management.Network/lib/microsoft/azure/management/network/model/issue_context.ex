# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.IssueContext do
  @moduledoc """
  A key-value pair that provides additional context on the issue.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.IssueContext do
  def decode(value, _options) do
    value
  end
end
