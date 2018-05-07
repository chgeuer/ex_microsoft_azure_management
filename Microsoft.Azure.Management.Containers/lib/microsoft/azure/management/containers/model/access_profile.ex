# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.AccessProfile do
  @moduledoc """
  Profile for enabling a user to access a managed cluster.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"kubeConfig"
  ]

  @type t :: %__MODULE__{
    :"kubeConfig" => binary()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.AccessProfile do
  def decode(value, _options) do
    value
  end
end

