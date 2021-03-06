# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventGrid.Api.EventSubscriptions do
  @moduledoc """
  API calls for all endpoints tagged `EventSubscriptions`.
  """

  alias Microsoft.Azure.Management.EventGrid.Connection
  import Microsoft.Azure.Management.EventGrid.RequestBuilder


  @doc """
  Create or update an event subscription
  Asynchronously creates a new event subscription or updates an existing event subscription based on the specified scope.

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - scope (String.t): The identifier of the resource to which the event subscription needs to be created or updated. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use &#39;/subscriptions/{subscriptionId}/&#39; for a subscription, &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}&#39; for a resource group, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}&#39; for a resource, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}&#39; for an EventGrid topic.
  - event_subscription_name (String.t): Name of the event subscription. Event subscription names must be between 3 and 64 characters in length and should use alphanumeric letters only.
  - event_subscription_info (EventSubscription): Event subscription properties containing the destination and filter information
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscription{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_create_or_update(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.EventGrid.Model.EventSubscription.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscription.t} | {:error, Tesla.Env.t}
  def event_subscriptions_create_or_update(connection, scope, event_subscription_name, event_subscription_info, api_version, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{scope}/providers/Microsoft.EventGrid/eventSubscriptions/#{event_subscription_name}")
    |> add_param(:body, :body, event_subscription_info)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscription{})
  end

  @doc """
  Delete an event subscription
  Delete an existing event subscription

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - scope (String.t): The scope of the event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use &#39;/subscriptions/{subscriptionId}/&#39; for a subscription, &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}&#39; for a resource group, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}&#39; for a resource, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}&#39; for an EventGrid topic.
  - event_subscription_name (String.t): Name of the event subscription
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def event_subscriptions_delete(connection, scope, event_subscription_name, api_version, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{scope}/providers/Microsoft.EventGrid/eventSubscriptions/#{event_subscription_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get an event subscription
  Get properties of an event subscription

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - scope (String.t): The scope of the event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use &#39;/subscriptions/{subscriptionId}/&#39; for a subscription, &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}&#39; for a resource group, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}&#39; for a resource, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}&#39; for an EventGrid topic.
  - event_subscription_name (String.t): Name of the event subscription
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscription{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscription.t} | {:error, Tesla.Env.t}
  def event_subscriptions_get(connection, scope, event_subscription_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{scope}/providers/Microsoft.EventGrid/eventSubscriptions/#{event_subscription_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscription{})
  end

  @doc """
  Get full URL of an event subscription
  Get the full endpoint URL for an event subscription

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - scope (String.t): The scope of the event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use &#39;/subscriptions/{subscriptionId}/&#39; for a subscription, &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}&#39; for a resource group, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}&#39; for a resource, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}&#39; for an EventGrid topic.
  - event_subscription_name (String.t): Name of the event subscription
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionFullUrl{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_get_full_url(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionFullUrl.t} | {:error, Tesla.Env.t}
  def event_subscriptions_get_full_url(connection, scope, event_subscription_name, api_version, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{scope}/providers/Microsoft.EventGrid/eventSubscriptions/#{event_subscription_name}/getFullUrl")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionFullUrl{})
  end

  @doc """
  List all event subscriptions for a specific topic
  List all event subscriptions that have been created for a specific topic

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription.
  - provider_namespace (String.t): Namespace of the provider of the topic
  - resource_type_name (String.t): Name of the resource type
  - resource_name (String.t): Name of the resource
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_by_resource(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_by_resource(connection, subscription_id, resource_group_name, provider_namespace, resource_type_name, resource_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/#{provider_namespace}/#{resource_type_name}/#{resource_name}/providers/Microsoft.EventGrid/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  List all global event subscriptions under an Azure subscription and resource group
  List all global event subscriptions under a specific Azure subscription and resource group

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription.
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_global_by_resource_group(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_global_by_resource_group(connection, subscription_id, resource_group_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.EventGrid/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  List all global event subscriptions under a resource group for a topic type
  List all global event subscriptions under a resource group for a specific topic type.

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription.
  - topic_type_name (String.t): Name of the topic type
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_global_by_resource_group_for_topic_type(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_global_by_resource_group_for_topic_type(connection, subscription_id, resource_group_name, topic_type_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.EventGrid/topicTypes/#{topic_type_name}/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  Get an aggregated list of all global event subscriptions under an Azure subscription
  List all aggregated global event subscriptions under a specific Azure subscription

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_global_by_subscription(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_global_by_subscription(connection, subscription_id, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.EventGrid/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  List all global event subscriptions for a topic type
  List all global event subscriptions under an Azure subscription for a topic type.

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - topic_type_name (String.t): Name of the topic type
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_global_by_subscription_for_topic_type(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_global_by_subscription_for_topic_type(connection, subscription_id, topic_type_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.EventGrid/topicTypes/#{topic_type_name}/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  List all regional event subscriptions under an Azure subscription and resource group
  List all event subscriptions from the given location under a specific Azure subscription and resource group

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription.
  - location (String.t): Name of the location
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_regional_by_resource_group(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_regional_by_resource_group(connection, subscription_id, resource_group_name, location, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.EventGrid/locations/#{location}/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  List all regional event subscriptions under an Azure subscription and resource group for a topic type
  List all event subscriptions from the given location under a specific Azure subscription and resource group and topic type

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription.
  - location (String.t): Name of the location
  - topic_type_name (String.t): Name of the topic type
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_regional_by_resource_group_for_topic_type(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_regional_by_resource_group_for_topic_type(connection, subscription_id, resource_group_name, location, topic_type_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.EventGrid/locations/#{location}/topicTypes/#{topic_type_name}/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  List all regional event subscriptions under an Azure subscription
  List all event subscriptions from the given location under a specific Azure subscription

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - location (String.t): Name of the location
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_regional_by_subscription(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_regional_by_subscription(connection, subscription_id, location, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.EventGrid/locations/#{location}/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  List all regional event subscriptions under an Azure subscription for a topic type
  List all event subscriptions from the given location under a specific Azure subscription and topic type.

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - location (String.t): Name of the location
  - topic_type_name (String.t): Name of the topic type
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_list_regional_by_subscription_for_topic_type(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult.t} | {:error, Tesla.Env.t}
  def event_subscriptions_list_regional_by_subscription_for_topic_type(connection, subscription_id, location, topic_type_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.EventGrid/locations/#{location}/topicTypes/#{topic_type_name}/eventSubscriptions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionsListResult{})
  end

  @doc """
  Update an event subscription
  Asynchronously updates an existing event subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.EventGrid.Connection): Connection to server
  - scope (String.t): The scope of existing event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use &#39;/subscriptions/{subscriptionId}/&#39; for a subscription, &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}&#39; for a resource group, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}&#39; for a resource, and &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}&#39; for an EventGrid topic.
  - event_subscription_name (String.t): Name of the event subscription to be created
  - event_subscription_update_parameters (EventSubscriptionUpdateParameters): Updated event subscription information
  - api_version (String.t): Version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventGrid.Model.EventSubscription{}} on success
  {:error, info} on failure
  """
  @spec event_subscriptions_update(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionUpdateParameters.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventGrid.Model.EventSubscription.t} | {:error, Tesla.Env.t}
  def event_subscriptions_update(connection, scope, event_subscription_name, event_subscription_update_parameters, api_version, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/#{scope}/providers/Microsoft.EventGrid/eventSubscriptions/#{event_subscription_name}")
    |> add_param(:body, :body, event_subscription_update_parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventGrid.Model.EventSubscription{})
  end
end
