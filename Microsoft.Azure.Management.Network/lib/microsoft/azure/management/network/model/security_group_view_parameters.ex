# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.SecurityGroupViewParameters do
  @moduledoc """
  Parameters that define the VM to check security groups for.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"targetResourceId"
  ]

  @type t :: %__MODULE__{
    :"targetResourceId" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.SecurityGroupViewParameters do
  def decode(value, _options) do
    value
  end
end
