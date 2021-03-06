# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Advisor.Model.ShortDescription do
  @moduledoc """
  A summary of the recommendation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"problem",
    :"solution"
  ]

  @type t :: %__MODULE__{
    :"problem" => String.t,
    :"solution" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Advisor.Model.ShortDescription do
  def decode(value, _options) do
    value
  end
end

