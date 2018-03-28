## Module AWS.AutoScalingPlans.Types

#### `options`

``` purescript
options :: Options
```

#### `ApplicationSource`

``` purescript
newtype ApplicationSource
  = ApplicationSource { "CloudFormationStackARN" :: NullOrUndefined (XmlString) }
```

<p>Represents an application source.</p>

##### Instances
``` purescript
Newtype ApplicationSource _
Generic ApplicationSource _
Show ApplicationSource
Decode ApplicationSource
Encode ApplicationSource
```

#### `newApplicationSource`

``` purescript
newApplicationSource :: ApplicationSource
```

Constructs ApplicationSource from required parameters

#### `newApplicationSource'`

``` purescript
newApplicationSource' :: ({ "CloudFormationStackARN" :: NullOrUndefined (XmlString) } -> { "CloudFormationStackARN" :: NullOrUndefined (XmlString) }) -> ApplicationSource
```

Constructs ApplicationSource's fields from required parameters

#### `ApplicationSources`

``` purescript
newtype ApplicationSources
  = ApplicationSources (Array ApplicationSource)
```

##### Instances
``` purescript
Newtype ApplicationSources _
Generic ApplicationSources _
Show ApplicationSources
Decode ApplicationSources
Encode ApplicationSources
```

#### `ConcurrentUpdateException`

``` purescript
newtype ConcurrentUpdateException
  = ConcurrentUpdateException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Concurrent updates caused an exception, for example, if you request an update to a scaling plan that already has a pending update.</p>

##### Instances
``` purescript
Newtype ConcurrentUpdateException _
Generic ConcurrentUpdateException _
Show ConcurrentUpdateException
Decode ConcurrentUpdateException
Encode ConcurrentUpdateException
```

#### `newConcurrentUpdateException`

``` purescript
newConcurrentUpdateException :: ConcurrentUpdateException
```

Constructs ConcurrentUpdateException from required parameters

#### `newConcurrentUpdateException'`

``` purescript
newConcurrentUpdateException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ConcurrentUpdateException
```

Constructs ConcurrentUpdateException's fields from required parameters

#### `Cooldown`

``` purescript
newtype Cooldown
  = Cooldown Int
```

##### Instances
``` purescript
Newtype Cooldown _
Generic Cooldown _
Show Cooldown
Decode Cooldown
Encode Cooldown
```

#### `CreateScalingPlanRequest`

``` purescript
newtype CreateScalingPlanRequest
  = CreateScalingPlanRequest { "ScalingPlanName" :: ScalingPlanName, "ApplicationSource" :: ApplicationSource, "ScalingInstructions" :: ScalingInstructions }
```

##### Instances
``` purescript
Newtype CreateScalingPlanRequest _
Generic CreateScalingPlanRequest _
Show CreateScalingPlanRequest
Decode CreateScalingPlanRequest
Encode CreateScalingPlanRequest
```

#### `newCreateScalingPlanRequest`

``` purescript
newCreateScalingPlanRequest :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> CreateScalingPlanRequest
```

Constructs CreateScalingPlanRequest from required parameters

#### `newCreateScalingPlanRequest'`

``` purescript
newCreateScalingPlanRequest' :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> ({ "ScalingPlanName" :: ScalingPlanName, "ApplicationSource" :: ApplicationSource, "ScalingInstructions" :: ScalingInstructions } -> { "ScalingPlanName" :: ScalingPlanName, "ApplicationSource" :: ApplicationSource, "ScalingInstructions" :: ScalingInstructions }) -> CreateScalingPlanRequest
```

Constructs CreateScalingPlanRequest's fields from required parameters

#### `CreateScalingPlanResponse`

``` purescript
newtype CreateScalingPlanResponse
  = CreateScalingPlanResponse { "ScalingPlanVersion" :: ScalingPlanVersion }
```

##### Instances
``` purescript
Newtype CreateScalingPlanResponse _
Generic CreateScalingPlanResponse _
Show CreateScalingPlanResponse
Decode CreateScalingPlanResponse
Encode CreateScalingPlanResponse
```

#### `newCreateScalingPlanResponse`

``` purescript
newCreateScalingPlanResponse :: ScalingPlanVersion -> CreateScalingPlanResponse
```

Constructs CreateScalingPlanResponse from required parameters

#### `newCreateScalingPlanResponse'`

``` purescript
newCreateScalingPlanResponse' :: ScalingPlanVersion -> ({ "ScalingPlanVersion" :: ScalingPlanVersion } -> { "ScalingPlanVersion" :: ScalingPlanVersion }) -> CreateScalingPlanResponse
```

Constructs CreateScalingPlanResponse's fields from required parameters

#### `CustomizedScalingMetricSpecification`

``` purescript
newtype CustomizedScalingMetricSpecification
  = CustomizedScalingMetricSpecification { "MetricName" :: MetricName, "Namespace" :: MetricNamespace, "Dimensions" :: NullOrUndefined (MetricDimensions), "Statistic" :: MetricStatistic, "Unit" :: NullOrUndefined (MetricUnit) }
```

<p>Represents a customized metric for a target tracking policy.</p>

##### Instances
``` purescript
Newtype CustomizedScalingMetricSpecification _
Generic CustomizedScalingMetricSpecification _
Show CustomizedScalingMetricSpecification
Decode CustomizedScalingMetricSpecification
Encode CustomizedScalingMetricSpecification
```

#### `newCustomizedScalingMetricSpecification`

``` purescript
newCustomizedScalingMetricSpecification :: MetricName -> MetricNamespace -> MetricStatistic -> CustomizedScalingMetricSpecification
```

Constructs CustomizedScalingMetricSpecification from required parameters

#### `newCustomizedScalingMetricSpecification'`

``` purescript
newCustomizedScalingMetricSpecification' :: MetricName -> MetricNamespace -> MetricStatistic -> ({ "MetricName" :: MetricName, "Namespace" :: MetricNamespace, "Dimensions" :: NullOrUndefined (MetricDimensions), "Statistic" :: MetricStatistic, "Unit" :: NullOrUndefined (MetricUnit) } -> { "MetricName" :: MetricName, "Namespace" :: MetricNamespace, "Dimensions" :: NullOrUndefined (MetricDimensions), "Statistic" :: MetricStatistic, "Unit" :: NullOrUndefined (MetricUnit) }) -> CustomizedScalingMetricSpecification
```

Constructs CustomizedScalingMetricSpecification's fields from required parameters

#### `DeleteScalingPlanRequest`

``` purescript
newtype DeleteScalingPlanRequest
  = DeleteScalingPlanRequest { "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion }
```

##### Instances
``` purescript
Newtype DeleteScalingPlanRequest _
Generic DeleteScalingPlanRequest _
Show DeleteScalingPlanRequest
Decode DeleteScalingPlanRequest
Encode DeleteScalingPlanRequest
```

#### `newDeleteScalingPlanRequest`

``` purescript
newDeleteScalingPlanRequest :: ScalingPlanName -> ScalingPlanVersion -> DeleteScalingPlanRequest
```

Constructs DeleteScalingPlanRequest from required parameters

#### `newDeleteScalingPlanRequest'`

``` purescript
newDeleteScalingPlanRequest' :: ScalingPlanName -> ScalingPlanVersion -> ({ "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion } -> { "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion }) -> DeleteScalingPlanRequest
```

Constructs DeleteScalingPlanRequest's fields from required parameters

#### `DeleteScalingPlanResponse`

``` purescript
newtype DeleteScalingPlanResponse
  = DeleteScalingPlanResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteScalingPlanResponse _
Generic DeleteScalingPlanResponse _
Show DeleteScalingPlanResponse
Decode DeleteScalingPlanResponse
Encode DeleteScalingPlanResponse
```

#### `DescribeScalingPlanResourcesRequest`

``` purescript
newtype DescribeScalingPlanResourcesRequest
  = DescribeScalingPlanResourcesRequest { "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeScalingPlanResourcesRequest _
Generic DescribeScalingPlanResourcesRequest _
Show DescribeScalingPlanResourcesRequest
Decode DescribeScalingPlanResourcesRequest
Encode DescribeScalingPlanResourcesRequest
```

#### `newDescribeScalingPlanResourcesRequest`

``` purescript
newDescribeScalingPlanResourcesRequest :: ScalingPlanName -> ScalingPlanVersion -> DescribeScalingPlanResourcesRequest
```

Constructs DescribeScalingPlanResourcesRequest from required parameters

#### `newDescribeScalingPlanResourcesRequest'`

``` purescript
newDescribeScalingPlanResourcesRequest' :: ScalingPlanName -> ScalingPlanVersion -> ({ "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeScalingPlanResourcesRequest
```

Constructs DescribeScalingPlanResourcesRequest's fields from required parameters

#### `DescribeScalingPlanResourcesResponse`

``` purescript
newtype DescribeScalingPlanResourcesResponse
  = DescribeScalingPlanResourcesResponse { "ScalingPlanResources" :: NullOrUndefined (ScalingPlanResources), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeScalingPlanResourcesResponse _
Generic DescribeScalingPlanResourcesResponse _
Show DescribeScalingPlanResourcesResponse
Decode DescribeScalingPlanResourcesResponse
Encode DescribeScalingPlanResourcesResponse
```

#### `newDescribeScalingPlanResourcesResponse`

``` purescript
newDescribeScalingPlanResourcesResponse :: DescribeScalingPlanResourcesResponse
```

Constructs DescribeScalingPlanResourcesResponse from required parameters

#### `newDescribeScalingPlanResourcesResponse'`

``` purescript
newDescribeScalingPlanResourcesResponse' :: ({ "ScalingPlanResources" :: NullOrUndefined (ScalingPlanResources), "NextToken" :: NullOrUndefined (NextToken) } -> { "ScalingPlanResources" :: NullOrUndefined (ScalingPlanResources), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeScalingPlanResourcesResponse
```

Constructs DescribeScalingPlanResourcesResponse's fields from required parameters

#### `DescribeScalingPlansRequest`

``` purescript
newtype DescribeScalingPlansRequest
  = DescribeScalingPlansRequest { "ScalingPlanNames" :: NullOrUndefined (ScalingPlanNames), "ScalingPlanVersion" :: NullOrUndefined (ScalingPlanVersion), "ApplicationSources" :: NullOrUndefined (ApplicationSources), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeScalingPlansRequest _
Generic DescribeScalingPlansRequest _
Show DescribeScalingPlansRequest
Decode DescribeScalingPlansRequest
Encode DescribeScalingPlansRequest
```

#### `newDescribeScalingPlansRequest`

``` purescript
newDescribeScalingPlansRequest :: DescribeScalingPlansRequest
```

Constructs DescribeScalingPlansRequest from required parameters

#### `newDescribeScalingPlansRequest'`

``` purescript
newDescribeScalingPlansRequest' :: ({ "ScalingPlanNames" :: NullOrUndefined (ScalingPlanNames), "ScalingPlanVersion" :: NullOrUndefined (ScalingPlanVersion), "ApplicationSources" :: NullOrUndefined (ApplicationSources), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "ScalingPlanNames" :: NullOrUndefined (ScalingPlanNames), "ScalingPlanVersion" :: NullOrUndefined (ScalingPlanVersion), "ApplicationSources" :: NullOrUndefined (ApplicationSources), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeScalingPlansRequest
```

Constructs DescribeScalingPlansRequest's fields from required parameters

#### `DescribeScalingPlansResponse`

``` purescript
newtype DescribeScalingPlansResponse
  = DescribeScalingPlansResponse { "ScalingPlans" :: NullOrUndefined (ScalingPlans), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeScalingPlansResponse _
Generic DescribeScalingPlansResponse _
Show DescribeScalingPlansResponse
Decode DescribeScalingPlansResponse
Encode DescribeScalingPlansResponse
```

#### `newDescribeScalingPlansResponse`

``` purescript
newDescribeScalingPlansResponse :: DescribeScalingPlansResponse
```

Constructs DescribeScalingPlansResponse from required parameters

#### `newDescribeScalingPlansResponse'`

``` purescript
newDescribeScalingPlansResponse' :: ({ "ScalingPlans" :: NullOrUndefined (ScalingPlans), "NextToken" :: NullOrUndefined (NextToken) } -> { "ScalingPlans" :: NullOrUndefined (ScalingPlans), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeScalingPlansResponse
```

Constructs DescribeScalingPlansResponse's fields from required parameters

#### `DisableScaleIn`

``` purescript
newtype DisableScaleIn
  = DisableScaleIn Boolean
```

##### Instances
``` purescript
Newtype DisableScaleIn _
Generic DisableScaleIn _
Show DisableScaleIn
Decode DisableScaleIn
Encode DisableScaleIn
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `InternalServiceException`

``` purescript
newtype InternalServiceException
  = InternalServiceException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The service encountered an internal error.</p>

##### Instances
``` purescript
Newtype InternalServiceException _
Generic InternalServiceException _
Show InternalServiceException
Decode InternalServiceException
Encode InternalServiceException
```

#### `newInternalServiceException`

``` purescript
newInternalServiceException :: InternalServiceException
```

Constructs InternalServiceException from required parameters

#### `newInternalServiceException'`

``` purescript
newInternalServiceException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InternalServiceException
```

Constructs InternalServiceException's fields from required parameters

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The token provided is not valid.</p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `newInvalidNextTokenException`

``` purescript
newInvalidNextTokenException :: InvalidNextTokenException
```

Constructs InvalidNextTokenException from required parameters

#### `newInvalidNextTokenException'`

``` purescript
newInvalidNextTokenException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InvalidNextTokenException
```

Constructs InvalidNextTokenException's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Your account exceeded a limit. This exception is thrown when a per-account resource limit is exceeded.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MetricDimension`

``` purescript
newtype MetricDimension
  = MetricDimension { "Name" :: MetricDimensionName, "Value" :: MetricDimensionValue }
```

<p>Represents a dimension for a customized metric.</p>

##### Instances
``` purescript
Newtype MetricDimension _
Generic MetricDimension _
Show MetricDimension
Decode MetricDimension
Encode MetricDimension
```

#### `newMetricDimension`

``` purescript
newMetricDimension :: MetricDimensionName -> MetricDimensionValue -> MetricDimension
```

Constructs MetricDimension from required parameters

#### `newMetricDimension'`

``` purescript
newMetricDimension' :: MetricDimensionName -> MetricDimensionValue -> ({ "Name" :: MetricDimensionName, "Value" :: MetricDimensionValue } -> { "Name" :: MetricDimensionName, "Value" :: MetricDimensionValue }) -> MetricDimension
```

Constructs MetricDimension's fields from required parameters

#### `MetricDimensionName`

``` purescript
newtype MetricDimensionName
  = MetricDimensionName String
```

##### Instances
``` purescript
Newtype MetricDimensionName _
Generic MetricDimensionName _
Show MetricDimensionName
Decode MetricDimensionName
Encode MetricDimensionName
```

#### `MetricDimensionValue`

``` purescript
newtype MetricDimensionValue
  = MetricDimensionValue String
```

##### Instances
``` purescript
Newtype MetricDimensionValue _
Generic MetricDimensionValue _
Show MetricDimensionValue
Decode MetricDimensionValue
Encode MetricDimensionValue
```

#### `MetricDimensions`

``` purescript
newtype MetricDimensions
  = MetricDimensions (Array MetricDimension)
```

##### Instances
``` purescript
Newtype MetricDimensions _
Generic MetricDimensions _
Show MetricDimensions
Decode MetricDimensions
Encode MetricDimensions
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

##### Instances
``` purescript
Newtype MetricName _
Generic MetricName _
Show MetricName
Decode MetricName
Encode MetricName
```

#### `MetricNamespace`

``` purescript
newtype MetricNamespace
  = MetricNamespace String
```

##### Instances
``` purescript
Newtype MetricNamespace _
Generic MetricNamespace _
Show MetricNamespace
Decode MetricNamespace
Encode MetricNamespace
```

#### `MetricScale`

``` purescript
newtype MetricScale
  = MetricScale Number
```

##### Instances
``` purescript
Newtype MetricScale _
Generic MetricScale _
Show MetricScale
Decode MetricScale
Encode MetricScale
```

#### `MetricStatistic`

``` purescript
newtype MetricStatistic
  = MetricStatistic String
```

##### Instances
``` purescript
Newtype MetricStatistic _
Generic MetricStatistic _
Show MetricStatistic
Decode MetricStatistic
Encode MetricStatistic
```

#### `MetricUnit`

``` purescript
newtype MetricUnit
  = MetricUnit String
```

##### Instances
``` purescript
Newtype MetricUnit _
Generic MetricUnit _
Show MetricUnit
Decode MetricUnit
Encode MetricUnit
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `ObjectNotFoundException`

``` purescript
newtype ObjectNotFoundException
  = ObjectNotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The specified object could not be found.</p>

##### Instances
``` purescript
Newtype ObjectNotFoundException _
Generic ObjectNotFoundException _
Show ObjectNotFoundException
Decode ObjectNotFoundException
Encode ObjectNotFoundException
```

#### `newObjectNotFoundException`

``` purescript
newObjectNotFoundException :: ObjectNotFoundException
```

Constructs ObjectNotFoundException from required parameters

#### `newObjectNotFoundException'`

``` purescript
newObjectNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ObjectNotFoundException
```

Constructs ObjectNotFoundException's fields from required parameters

#### `PolicyName`

``` purescript
newtype PolicyName
  = PolicyName String
```

##### Instances
``` purescript
Newtype PolicyName _
Generic PolicyName _
Show PolicyName
Decode PolicyName
Encode PolicyName
```

#### `PolicyType`

``` purescript
newtype PolicyType
  = PolicyType String
```

##### Instances
``` purescript
Newtype PolicyType _
Generic PolicyType _
Show PolicyType
Decode PolicyType
Encode PolicyType
```

#### `PredefinedScalingMetricSpecification`

``` purescript
newtype PredefinedScalingMetricSpecification
  = PredefinedScalingMetricSpecification { "PredefinedScalingMetricType" :: ScalingMetricType, "ResourceLabel" :: NullOrUndefined (ResourceLabel) }
```

<p>Represents a predefined metric for a target tracking policy.</p>

##### Instances
``` purescript
Newtype PredefinedScalingMetricSpecification _
Generic PredefinedScalingMetricSpecification _
Show PredefinedScalingMetricSpecification
Decode PredefinedScalingMetricSpecification
Encode PredefinedScalingMetricSpecification
```

#### `newPredefinedScalingMetricSpecification`

``` purescript
newPredefinedScalingMetricSpecification :: ScalingMetricType -> PredefinedScalingMetricSpecification
```

Constructs PredefinedScalingMetricSpecification from required parameters

#### `newPredefinedScalingMetricSpecification'`

``` purescript
newPredefinedScalingMetricSpecification' :: ScalingMetricType -> ({ "PredefinedScalingMetricType" :: ScalingMetricType, "ResourceLabel" :: NullOrUndefined (ResourceLabel) } -> { "PredefinedScalingMetricType" :: ScalingMetricType, "ResourceLabel" :: NullOrUndefined (ResourceLabel) }) -> PredefinedScalingMetricSpecification
```

Constructs PredefinedScalingMetricSpecification's fields from required parameters

#### `ResourceCapacity`

``` purescript
newtype ResourceCapacity
  = ResourceCapacity Int
```

##### Instances
``` purescript
Newtype ResourceCapacity _
Generic ResourceCapacity _
Show ResourceCapacity
Decode ResourceCapacity
Encode ResourceCapacity
```

#### `ResourceIdMaxLen1600`

``` purescript
newtype ResourceIdMaxLen1600
  = ResourceIdMaxLen1600 String
```

##### Instances
``` purescript
Newtype ResourceIdMaxLen1600 _
Generic ResourceIdMaxLen1600 _
Show ResourceIdMaxLen1600
Decode ResourceIdMaxLen1600
Encode ResourceIdMaxLen1600
```

#### `ResourceLabel`

``` purescript
newtype ResourceLabel
  = ResourceLabel String
```

##### Instances
``` purescript
Newtype ResourceLabel _
Generic ResourceLabel _
Show ResourceLabel
Decode ResourceLabel
Encode ResourceLabel
```

#### `ScalableDimension`

``` purescript
newtype ScalableDimension
  = ScalableDimension String
```

##### Instances
``` purescript
Newtype ScalableDimension _
Generic ScalableDimension _
Show ScalableDimension
Decode ScalableDimension
Encode ScalableDimension
```

#### `ScalingInstruction`

``` purescript
newtype ScalingInstruction
  = ScalingInstruction { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: ResourceCapacity, "MaxCapacity" :: ResourceCapacity, "TargetTrackingConfigurations" :: TargetTrackingConfigurations }
```

<p>Specifies the scaling configuration for a scalable resource.</p>

##### Instances
``` purescript
Newtype ScalingInstruction _
Generic ScalingInstruction _
Show ScalingInstruction
Decode ScalingInstruction
Encode ScalingInstruction
```

#### `newScalingInstruction`

``` purescript
newScalingInstruction :: ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TargetTrackingConfigurations -> ScalingInstruction
```

Constructs ScalingInstruction from required parameters

#### `newScalingInstruction'`

``` purescript
newScalingInstruction' :: ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TargetTrackingConfigurations -> ({ "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: ResourceCapacity, "MaxCapacity" :: ResourceCapacity, "TargetTrackingConfigurations" :: TargetTrackingConfigurations } -> { "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "MinCapacity" :: ResourceCapacity, "MaxCapacity" :: ResourceCapacity, "TargetTrackingConfigurations" :: TargetTrackingConfigurations }) -> ScalingInstruction
```

Constructs ScalingInstruction's fields from required parameters

#### `ScalingInstructions`

``` purescript
newtype ScalingInstructions
  = ScalingInstructions (Array ScalingInstruction)
```

##### Instances
``` purescript
Newtype ScalingInstructions _
Generic ScalingInstructions _
Show ScalingInstructions
Decode ScalingInstructions
Encode ScalingInstructions
```

#### `ScalingMetricType`

``` purescript
newtype ScalingMetricType
  = ScalingMetricType String
```

##### Instances
``` purescript
Newtype ScalingMetricType _
Generic ScalingMetricType _
Show ScalingMetricType
Decode ScalingMetricType
Encode ScalingMetricType
```

#### `ScalingPlan`

``` purescript
newtype ScalingPlan
  = ScalingPlan { "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "ApplicationSource" :: ApplicationSource, "ScalingInstructions" :: ScalingInstructions, "StatusCode" :: ScalingPlanStatusCode, "StatusMessage" :: NullOrUndefined (XmlString), "CreationTime" :: NullOrUndefined (TimestampType) }
```

<p>Represents a scaling plan.</p>

##### Instances
``` purescript
Newtype ScalingPlan _
Generic ScalingPlan _
Show ScalingPlan
Decode ScalingPlan
Encode ScalingPlan
```

#### `newScalingPlan`

``` purescript
newScalingPlan :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> ScalingPlanVersion -> ScalingPlanStatusCode -> ScalingPlan
```

Constructs ScalingPlan from required parameters

#### `newScalingPlan'`

``` purescript
newScalingPlan' :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> ScalingPlanVersion -> ScalingPlanStatusCode -> ({ "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "ApplicationSource" :: ApplicationSource, "ScalingInstructions" :: ScalingInstructions, "StatusCode" :: ScalingPlanStatusCode, "StatusMessage" :: NullOrUndefined (XmlString), "CreationTime" :: NullOrUndefined (TimestampType) } -> { "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "ApplicationSource" :: ApplicationSource, "ScalingInstructions" :: ScalingInstructions, "StatusCode" :: ScalingPlanStatusCode, "StatusMessage" :: NullOrUndefined (XmlString), "CreationTime" :: NullOrUndefined (TimestampType) }) -> ScalingPlan
```

Constructs ScalingPlan's fields from required parameters

#### `ScalingPlanName`

``` purescript
newtype ScalingPlanName
  = ScalingPlanName String
```

##### Instances
``` purescript
Newtype ScalingPlanName _
Generic ScalingPlanName _
Show ScalingPlanName
Decode ScalingPlanName
Encode ScalingPlanName
```

#### `ScalingPlanNames`

``` purescript
newtype ScalingPlanNames
  = ScalingPlanNames (Array ScalingPlanName)
```

##### Instances
``` purescript
Newtype ScalingPlanNames _
Generic ScalingPlanNames _
Show ScalingPlanNames
Decode ScalingPlanNames
Encode ScalingPlanNames
```

#### `ScalingPlanResource`

``` purescript
newtype ScalingPlanResource
  = ScalingPlanResource { "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "ScalingPolicies" :: NullOrUndefined (ScalingPolicies), "ScalingStatusCode" :: ScalingStatusCode, "ScalingStatusMessage" :: NullOrUndefined (XmlString) }
```

<p>Represents a scalable resource.</p>

##### Instances
``` purescript
Newtype ScalingPlanResource _
Generic ScalingPlanResource _
Show ScalingPlanResource
Decode ScalingPlanResource
Encode ScalingPlanResource
```

#### `newScalingPlanResource`

``` purescript
newScalingPlanResource :: ResourceIdMaxLen1600 -> ScalableDimension -> ScalingPlanName -> ScalingPlanVersion -> ScalingStatusCode -> ServiceNamespace -> ScalingPlanResource
```

Constructs ScalingPlanResource from required parameters

#### `newScalingPlanResource'`

``` purescript
newScalingPlanResource' :: ResourceIdMaxLen1600 -> ScalableDimension -> ScalingPlanName -> ScalingPlanVersion -> ScalingStatusCode -> ServiceNamespace -> ({ "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "ScalingPolicies" :: NullOrUndefined (ScalingPolicies), "ScalingStatusCode" :: ScalingStatusCode, "ScalingStatusMessage" :: NullOrUndefined (XmlString) } -> { "ScalingPlanName" :: ScalingPlanName, "ScalingPlanVersion" :: ScalingPlanVersion, "ServiceNamespace" :: ServiceNamespace, "ResourceId" :: ResourceIdMaxLen1600, "ScalableDimension" :: ScalableDimension, "ScalingPolicies" :: NullOrUndefined (ScalingPolicies), "ScalingStatusCode" :: ScalingStatusCode, "ScalingStatusMessage" :: NullOrUndefined (XmlString) }) -> ScalingPlanResource
```

Constructs ScalingPlanResource's fields from required parameters

#### `ScalingPlanResources`

``` purescript
newtype ScalingPlanResources
  = ScalingPlanResources (Array ScalingPlanResource)
```

##### Instances
``` purescript
Newtype ScalingPlanResources _
Generic ScalingPlanResources _
Show ScalingPlanResources
Decode ScalingPlanResources
Encode ScalingPlanResources
```

#### `ScalingPlanStatusCode`

``` purescript
newtype ScalingPlanStatusCode
  = ScalingPlanStatusCode String
```

##### Instances
``` purescript
Newtype ScalingPlanStatusCode _
Generic ScalingPlanStatusCode _
Show ScalingPlanStatusCode
Decode ScalingPlanStatusCode
Encode ScalingPlanStatusCode
```

#### `ScalingPlanVersion`

``` purescript
newtype ScalingPlanVersion
  = ScalingPlanVersion Number
```

##### Instances
``` purescript
Newtype ScalingPlanVersion _
Generic ScalingPlanVersion _
Show ScalingPlanVersion
Decode ScalingPlanVersion
Encode ScalingPlanVersion
```

#### `ScalingPlans`

``` purescript
newtype ScalingPlans
  = ScalingPlans (Array ScalingPlan)
```

##### Instances
``` purescript
Newtype ScalingPlans _
Generic ScalingPlans _
Show ScalingPlans
Decode ScalingPlans
Encode ScalingPlans
```

#### `ScalingPolicies`

``` purescript
newtype ScalingPolicies
  = ScalingPolicies (Array ScalingPolicy)
```

##### Instances
``` purescript
Newtype ScalingPolicies _
Generic ScalingPolicies _
Show ScalingPolicies
Decode ScalingPolicies
Encode ScalingPolicies
```

#### `ScalingPolicy`

``` purescript
newtype ScalingPolicy
  = ScalingPolicy { "PolicyName" :: PolicyName, "PolicyType" :: PolicyType, "TargetTrackingConfiguration" :: NullOrUndefined (TargetTrackingConfiguration) }
```

<p>Represents a scaling policy.</p>

##### Instances
``` purescript
Newtype ScalingPolicy _
Generic ScalingPolicy _
Show ScalingPolicy
Decode ScalingPolicy
Encode ScalingPolicy
```

#### `newScalingPolicy`

``` purescript
newScalingPolicy :: PolicyName -> PolicyType -> ScalingPolicy
```

Constructs ScalingPolicy from required parameters

#### `newScalingPolicy'`

``` purescript
newScalingPolicy' :: PolicyName -> PolicyType -> ({ "PolicyName" :: PolicyName, "PolicyType" :: PolicyType, "TargetTrackingConfiguration" :: NullOrUndefined (TargetTrackingConfiguration) } -> { "PolicyName" :: PolicyName, "PolicyType" :: PolicyType, "TargetTrackingConfiguration" :: NullOrUndefined (TargetTrackingConfiguration) }) -> ScalingPolicy
```

Constructs ScalingPolicy's fields from required parameters

#### `ScalingStatusCode`

``` purescript
newtype ScalingStatusCode
  = ScalingStatusCode String
```

##### Instances
``` purescript
Newtype ScalingStatusCode _
Generic ScalingStatusCode _
Show ScalingStatusCode
Decode ScalingStatusCode
Encode ScalingStatusCode
```

#### `ServiceNamespace`

``` purescript
newtype ServiceNamespace
  = ServiceNamespace String
```

##### Instances
``` purescript
Newtype ServiceNamespace _
Generic ServiceNamespace _
Show ServiceNamespace
Decode ServiceNamespace
Encode ServiceNamespace
```

#### `TargetTrackingConfiguration`

``` purescript
newtype TargetTrackingConfiguration
  = TargetTrackingConfiguration { "PredefinedScalingMetricSpecification" :: NullOrUndefined (PredefinedScalingMetricSpecification), "CustomizedScalingMetricSpecification" :: NullOrUndefined (CustomizedScalingMetricSpecification), "TargetValue" :: MetricScale, "DisableScaleIn" :: NullOrUndefined (DisableScaleIn), "ScaleOutCooldown" :: NullOrUndefined (Cooldown), "ScaleInCooldown" :: NullOrUndefined (Cooldown), "EstimatedInstanceWarmup" :: NullOrUndefined (Cooldown) }
```

<p>Represents a target tracking scaling policy.</p>

##### Instances
``` purescript
Newtype TargetTrackingConfiguration _
Generic TargetTrackingConfiguration _
Show TargetTrackingConfiguration
Decode TargetTrackingConfiguration
Encode TargetTrackingConfiguration
```

#### `newTargetTrackingConfiguration`

``` purescript
newTargetTrackingConfiguration :: MetricScale -> TargetTrackingConfiguration
```

Constructs TargetTrackingConfiguration from required parameters

#### `newTargetTrackingConfiguration'`

``` purescript
newTargetTrackingConfiguration' :: MetricScale -> ({ "PredefinedScalingMetricSpecification" :: NullOrUndefined (PredefinedScalingMetricSpecification), "CustomizedScalingMetricSpecification" :: NullOrUndefined (CustomizedScalingMetricSpecification), "TargetValue" :: MetricScale, "DisableScaleIn" :: NullOrUndefined (DisableScaleIn), "ScaleOutCooldown" :: NullOrUndefined (Cooldown), "ScaleInCooldown" :: NullOrUndefined (Cooldown), "EstimatedInstanceWarmup" :: NullOrUndefined (Cooldown) } -> { "PredefinedScalingMetricSpecification" :: NullOrUndefined (PredefinedScalingMetricSpecification), "CustomizedScalingMetricSpecification" :: NullOrUndefined (CustomizedScalingMetricSpecification), "TargetValue" :: MetricScale, "DisableScaleIn" :: NullOrUndefined (DisableScaleIn), "ScaleOutCooldown" :: NullOrUndefined (Cooldown), "ScaleInCooldown" :: NullOrUndefined (Cooldown), "EstimatedInstanceWarmup" :: NullOrUndefined (Cooldown) }) -> TargetTrackingConfiguration
```

Constructs TargetTrackingConfiguration's fields from required parameters

#### `TargetTrackingConfigurations`

``` purescript
newtype TargetTrackingConfigurations
  = TargetTrackingConfigurations (Array TargetTrackingConfiguration)
```

##### Instances
``` purescript
Newtype TargetTrackingConfigurations _
Generic TargetTrackingConfigurations _
Show TargetTrackingConfigurations
Decode TargetTrackingConfigurations
Encode TargetTrackingConfigurations
```

#### `TimestampType`

``` purescript
newtype TimestampType
  = TimestampType Timestamp
```

##### Instances
``` purescript
Newtype TimestampType _
Generic TimestampType _
Show TimestampType
Decode TimestampType
Encode TimestampType
```

#### `ValidationException`

``` purescript
newtype ValidationException
  = ValidationException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>An exception was thrown for a validation issue. Review the parameters provided.</p>

##### Instances
``` purescript
Newtype ValidationException _
Generic ValidationException _
Show ValidationException
Decode ValidationException
Encode ValidationException
```

#### `newValidationException`

``` purescript
newValidationException :: ValidationException
```

Constructs ValidationException from required parameters

#### `newValidationException'`

``` purescript
newValidationException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ValidationException
```

Constructs ValidationException's fields from required parameters

#### `XmlString`

``` purescript
newtype XmlString
  = XmlString String
```

##### Instances
``` purescript
Newtype XmlString _
Generic XmlString _
Show XmlString
Decode XmlString
Encode XmlString
```


