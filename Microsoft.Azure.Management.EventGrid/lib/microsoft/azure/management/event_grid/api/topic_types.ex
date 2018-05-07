# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventGrid.Api.TopicTypes do
  @moduledoc """
  API calls for all endpoints tagged `TopicTypes`.
  """

  alias Microsoft.Azure.Management.EventGrid.Connection
  import Microsoft.Azure.Management.EventGrid.RequestBuilder


  @doc """
  Get a topic type
  Get information about a topic type

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - topic_type_name (String.t): Name of the topic type
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.TopicTypeInfo{}} on success
  {:error, info} on failure
  """
  @spec topic_types_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.TopicTypeInfo.t} | {:error, Tesla.Env.t}
  def topic_types_get(connection, topic_type_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.EventGrid/topicTypes/#{topic_type_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.TopicTypeInfo{})
  end

  @doc """
  List topic types
  List all registered topic types

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.TopicTypesListResult{}} on success
  {:error, info} on failure
  """
  @spec topic_types_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.TopicTypesListResult.t} | {:error, Tesla.Env.t}
  def topic_types_list(connection, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.EventGrid/topicTypes")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.TopicTypesListResult{})
  end

  @doc """
  List event types
  List event types for a topic type

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - topic_type_name (String.t): Name of the topic type
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventTypesListResult{}} on success
  {:error, info} on failure
  """
  @spec topic_types_list_event_types(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventTypesListResult.t} | {:error, Tesla.Env.t}
  def topic_types_list_event_types(connection, topic_type_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.EventGrid/topicTypes/#{topic_type_name}/eventTypes")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventTypesListResult{})
  end
end