# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.QuarantinePolicy do
  @moduledoc """
  An object that represents quarantine policy for a container registry.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status"
  ]

  @type t :: %__MODULE__{
    :"status" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.QuarantinePolicy do
  def decode(value, _options) do
    value
  end
end
