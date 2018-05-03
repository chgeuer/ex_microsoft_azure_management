# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Management.Model.ParentGroupInfo do
  @moduledoc """
  (Optional) The ID of the parent management group.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"displayName"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"displayName" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Management.Model.ParentGroupInfo do
  def decode(value, _options) do
    value
  end
end

