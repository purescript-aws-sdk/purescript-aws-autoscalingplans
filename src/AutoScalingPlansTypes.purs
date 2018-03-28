
module AWS.AutoScalingPlans.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Represents an application source.</p>
newtype ApplicationSource = ApplicationSource 
  { "CloudFormationStackARN" :: NullOrUndefined (XmlString)
  }
derive instance newtypeApplicationSource :: Newtype ApplicationSource _
derive instance repGenericApplicationSource :: Generic ApplicationSource _
instance showApplicationSource :: Show ApplicationSource where show = genericShow
instance decodeApplicationSource :: Decode ApplicationSource where decode = genericDecode options
instance encodeApplicationSource :: Encode ApplicationSource where encode = genericEncode options

-- | Constructs ApplicationSource from required parameters
newApplicationSource :: ApplicationSource
newApplicationSource  = ApplicationSource { "CloudFormationStackARN": (NullOrUndefined Nothing) }

-- | Constructs ApplicationSource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationSource' :: ( { "CloudFormationStackARN" :: NullOrUndefined (XmlString) } -> {"CloudFormationStackARN" :: NullOrUndefined (XmlString) } ) -> ApplicationSource
newApplicationSource'  customize = (ApplicationSource <<< customize) { "CloudFormationStackARN": (NullOrUndefined Nothing) }



newtype ApplicationSources = ApplicationSources (Array ApplicationSource)
derive instance newtypeApplicationSources :: Newtype ApplicationSources _
derive instance repGenericApplicationSources :: Generic ApplicationSources _
instance showApplicationSources :: Show ApplicationSources where show = genericShow
instance decodeApplicationSources :: Decode ApplicationSources where decode = genericDecode options
instance encodeApplicationSources :: Encode ApplicationSources where encode = genericEncode options



-- | <p>Concurrent updates caused an exception, for example, if you request an update to a scaling plan that already has a pending update.</p>
newtype ConcurrentUpdateException = ConcurrentUpdateException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeConcurrentUpdateException :: Newtype ConcurrentUpdateException _
derive instance repGenericConcurrentUpdateException :: Generic ConcurrentUpdateException _
instance showConcurrentUpdateException :: Show ConcurrentUpdateException where show = genericShow
instance decodeConcurrentUpdateException :: Decode ConcurrentUpdateException where decode = genericDecode options
instance encodeConcurrentUpdateException :: Encode ConcurrentUpdateException where encode = genericEncode options

-- | Constructs ConcurrentUpdateException from required parameters
newConcurrentUpdateException :: ConcurrentUpdateException
newConcurrentUpdateException  = ConcurrentUpdateException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ConcurrentUpdateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentUpdateException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ConcurrentUpdateException
newConcurrentUpdateException'  customize = (ConcurrentUpdateException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Cooldown = Cooldown Int
derive instance newtypeCooldown :: Newtype Cooldown _
derive instance repGenericCooldown :: Generic Cooldown _
instance showCooldown :: Show Cooldown where show = genericShow
instance decodeCooldown :: Decode Cooldown where decode = genericDecode options
instance encodeCooldown :: Encode Cooldown where encode = genericEncode options



newtype CreateScalingPlanRequest = CreateScalingPlanRequest 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ApplicationSource" :: (ApplicationSource)
  , "ScalingInstructions" :: (ScalingInstructions)
  }
derive instance newtypeCreateScalingPlanRequest :: Newtype CreateScalingPlanRequest _
derive instance repGenericCreateScalingPlanRequest :: Generic CreateScalingPlanRequest _
instance showCreateScalingPlanRequest :: Show CreateScalingPlanRequest where show = genericShow
instance decodeCreateScalingPlanRequest :: Decode CreateScalingPlanRequest where decode = genericDecode options
instance encodeCreateScalingPlanRequest :: Encode CreateScalingPlanRequest where encode = genericEncode options

-- | Constructs CreateScalingPlanRequest from required parameters
newCreateScalingPlanRequest :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> CreateScalingPlanRequest
newCreateScalingPlanRequest _ApplicationSource _ScalingInstructions _ScalingPlanName = CreateScalingPlanRequest { "ApplicationSource": _ApplicationSource, "ScalingInstructions": _ScalingInstructions, "ScalingPlanName": _ScalingPlanName }

-- | Constructs CreateScalingPlanRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateScalingPlanRequest' :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> ( { "ScalingPlanName" :: (ScalingPlanName) , "ApplicationSource" :: (ApplicationSource) , "ScalingInstructions" :: (ScalingInstructions) } -> {"ScalingPlanName" :: (ScalingPlanName) , "ApplicationSource" :: (ApplicationSource) , "ScalingInstructions" :: (ScalingInstructions) } ) -> CreateScalingPlanRequest
newCreateScalingPlanRequest' _ApplicationSource _ScalingInstructions _ScalingPlanName customize = (CreateScalingPlanRequest <<< customize) { "ApplicationSource": _ApplicationSource, "ScalingInstructions": _ScalingInstructions, "ScalingPlanName": _ScalingPlanName }



newtype CreateScalingPlanResponse = CreateScalingPlanResponse 
  { "ScalingPlanVersion" :: (ScalingPlanVersion)
  }
derive instance newtypeCreateScalingPlanResponse :: Newtype CreateScalingPlanResponse _
derive instance repGenericCreateScalingPlanResponse :: Generic CreateScalingPlanResponse _
instance showCreateScalingPlanResponse :: Show CreateScalingPlanResponse where show = genericShow
instance decodeCreateScalingPlanResponse :: Decode CreateScalingPlanResponse where decode = genericDecode options
instance encodeCreateScalingPlanResponse :: Encode CreateScalingPlanResponse where encode = genericEncode options

-- | Constructs CreateScalingPlanResponse from required parameters
newCreateScalingPlanResponse :: ScalingPlanVersion -> CreateScalingPlanResponse
newCreateScalingPlanResponse _ScalingPlanVersion = CreateScalingPlanResponse { "ScalingPlanVersion": _ScalingPlanVersion }

-- | Constructs CreateScalingPlanResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateScalingPlanResponse' :: ScalingPlanVersion -> ( { "ScalingPlanVersion" :: (ScalingPlanVersion) } -> {"ScalingPlanVersion" :: (ScalingPlanVersion) } ) -> CreateScalingPlanResponse
newCreateScalingPlanResponse' _ScalingPlanVersion customize = (CreateScalingPlanResponse <<< customize) { "ScalingPlanVersion": _ScalingPlanVersion }



-- | <p>Represents a customized metric for a target tracking policy.</p>
newtype CustomizedScalingMetricSpecification = CustomizedScalingMetricSpecification 
  { "MetricName" :: (MetricName)
  , "Namespace" :: (MetricNamespace)
  , "Dimensions" :: NullOrUndefined (MetricDimensions)
  , "Statistic" :: (MetricStatistic)
  , "Unit" :: NullOrUndefined (MetricUnit)
  }
derive instance newtypeCustomizedScalingMetricSpecification :: Newtype CustomizedScalingMetricSpecification _
derive instance repGenericCustomizedScalingMetricSpecification :: Generic CustomizedScalingMetricSpecification _
instance showCustomizedScalingMetricSpecification :: Show CustomizedScalingMetricSpecification where show = genericShow
instance decodeCustomizedScalingMetricSpecification :: Decode CustomizedScalingMetricSpecification where decode = genericDecode options
instance encodeCustomizedScalingMetricSpecification :: Encode CustomizedScalingMetricSpecification where encode = genericEncode options

-- | Constructs CustomizedScalingMetricSpecification from required parameters
newCustomizedScalingMetricSpecification :: MetricName -> MetricNamespace -> MetricStatistic -> CustomizedScalingMetricSpecification
newCustomizedScalingMetricSpecification _MetricName _Namespace _Statistic = CustomizedScalingMetricSpecification { "MetricName": _MetricName, "Namespace": _Namespace, "Statistic": _Statistic, "Dimensions": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }

-- | Constructs CustomizedScalingMetricSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomizedScalingMetricSpecification' :: MetricName -> MetricNamespace -> MetricStatistic -> ( { "MetricName" :: (MetricName) , "Namespace" :: (MetricNamespace) , "Dimensions" :: NullOrUndefined (MetricDimensions) , "Statistic" :: (MetricStatistic) , "Unit" :: NullOrUndefined (MetricUnit) } -> {"MetricName" :: (MetricName) , "Namespace" :: (MetricNamespace) , "Dimensions" :: NullOrUndefined (MetricDimensions) , "Statistic" :: (MetricStatistic) , "Unit" :: NullOrUndefined (MetricUnit) } ) -> CustomizedScalingMetricSpecification
newCustomizedScalingMetricSpecification' _MetricName _Namespace _Statistic customize = (CustomizedScalingMetricSpecification <<< customize) { "MetricName": _MetricName, "Namespace": _Namespace, "Statistic": _Statistic, "Dimensions": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }



newtype DeleteScalingPlanRequest = DeleteScalingPlanRequest 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ScalingPlanVersion" :: (ScalingPlanVersion)
  }
derive instance newtypeDeleteScalingPlanRequest :: Newtype DeleteScalingPlanRequest _
derive instance repGenericDeleteScalingPlanRequest :: Generic DeleteScalingPlanRequest _
instance showDeleteScalingPlanRequest :: Show DeleteScalingPlanRequest where show = genericShow
instance decodeDeleteScalingPlanRequest :: Decode DeleteScalingPlanRequest where decode = genericDecode options
instance encodeDeleteScalingPlanRequest :: Encode DeleteScalingPlanRequest where encode = genericEncode options

-- | Constructs DeleteScalingPlanRequest from required parameters
newDeleteScalingPlanRequest :: ScalingPlanName -> ScalingPlanVersion -> DeleteScalingPlanRequest
newDeleteScalingPlanRequest _ScalingPlanName _ScalingPlanVersion = DeleteScalingPlanRequest { "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion }

-- | Constructs DeleteScalingPlanRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteScalingPlanRequest' :: ScalingPlanName -> ScalingPlanVersion -> ( { "ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) } -> {"ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) } ) -> DeleteScalingPlanRequest
newDeleteScalingPlanRequest' _ScalingPlanName _ScalingPlanVersion customize = (DeleteScalingPlanRequest <<< customize) { "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion }



newtype DeleteScalingPlanResponse = DeleteScalingPlanResponse Types.NoArguments
derive instance newtypeDeleteScalingPlanResponse :: Newtype DeleteScalingPlanResponse _
derive instance repGenericDeleteScalingPlanResponse :: Generic DeleteScalingPlanResponse _
instance showDeleteScalingPlanResponse :: Show DeleteScalingPlanResponse where show = genericShow
instance decodeDeleteScalingPlanResponse :: Decode DeleteScalingPlanResponse where decode = genericDecode options
instance encodeDeleteScalingPlanResponse :: Encode DeleteScalingPlanResponse where encode = genericEncode options



newtype DescribeScalingPlanResourcesRequest = DescribeScalingPlanResourcesRequest 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ScalingPlanVersion" :: (ScalingPlanVersion)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeScalingPlanResourcesRequest :: Newtype DescribeScalingPlanResourcesRequest _
derive instance repGenericDescribeScalingPlanResourcesRequest :: Generic DescribeScalingPlanResourcesRequest _
instance showDescribeScalingPlanResourcesRequest :: Show DescribeScalingPlanResourcesRequest where show = genericShow
instance decodeDescribeScalingPlanResourcesRequest :: Decode DescribeScalingPlanResourcesRequest where decode = genericDecode options
instance encodeDescribeScalingPlanResourcesRequest :: Encode DescribeScalingPlanResourcesRequest where encode = genericEncode options

-- | Constructs DescribeScalingPlanResourcesRequest from required parameters
newDescribeScalingPlanResourcesRequest :: ScalingPlanName -> ScalingPlanVersion -> DescribeScalingPlanResourcesRequest
newDescribeScalingPlanResourcesRequest _ScalingPlanName _ScalingPlanVersion = DescribeScalingPlanResourcesRequest { "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPlanResourcesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPlanResourcesRequest' :: ScalingPlanName -> ScalingPlanVersion -> ( { "ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (NextToken) } -> {"ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (NextToken) } ) -> DescribeScalingPlanResourcesRequest
newDescribeScalingPlanResourcesRequest' _ScalingPlanName _ScalingPlanVersion customize = (DescribeScalingPlanResourcesRequest <<< customize) { "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeScalingPlanResourcesResponse = DescribeScalingPlanResourcesResponse 
  { "ScalingPlanResources" :: NullOrUndefined (ScalingPlanResources)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeScalingPlanResourcesResponse :: Newtype DescribeScalingPlanResourcesResponse _
derive instance repGenericDescribeScalingPlanResourcesResponse :: Generic DescribeScalingPlanResourcesResponse _
instance showDescribeScalingPlanResourcesResponse :: Show DescribeScalingPlanResourcesResponse where show = genericShow
instance decodeDescribeScalingPlanResourcesResponse :: Decode DescribeScalingPlanResourcesResponse where decode = genericDecode options
instance encodeDescribeScalingPlanResourcesResponse :: Encode DescribeScalingPlanResourcesResponse where encode = genericEncode options

-- | Constructs DescribeScalingPlanResourcesResponse from required parameters
newDescribeScalingPlanResourcesResponse :: DescribeScalingPlanResourcesResponse
newDescribeScalingPlanResourcesResponse  = DescribeScalingPlanResourcesResponse { "NextToken": (NullOrUndefined Nothing), "ScalingPlanResources": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPlanResourcesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPlanResourcesResponse' :: ( { "ScalingPlanResources" :: NullOrUndefined (ScalingPlanResources) , "NextToken" :: NullOrUndefined (NextToken) } -> {"ScalingPlanResources" :: NullOrUndefined (ScalingPlanResources) , "NextToken" :: NullOrUndefined (NextToken) } ) -> DescribeScalingPlanResourcesResponse
newDescribeScalingPlanResourcesResponse'  customize = (DescribeScalingPlanResourcesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingPlanResources": (NullOrUndefined Nothing) }



newtype DescribeScalingPlansRequest = DescribeScalingPlansRequest 
  { "ScalingPlanNames" :: NullOrUndefined (ScalingPlanNames)
  , "ScalingPlanVersion" :: NullOrUndefined (ScalingPlanVersion)
  , "ApplicationSources" :: NullOrUndefined (ApplicationSources)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeScalingPlansRequest :: Newtype DescribeScalingPlansRequest _
derive instance repGenericDescribeScalingPlansRequest :: Generic DescribeScalingPlansRequest _
instance showDescribeScalingPlansRequest :: Show DescribeScalingPlansRequest where show = genericShow
instance decodeDescribeScalingPlansRequest :: Decode DescribeScalingPlansRequest where decode = genericDecode options
instance encodeDescribeScalingPlansRequest :: Encode DescribeScalingPlansRequest where encode = genericEncode options

-- | Constructs DescribeScalingPlansRequest from required parameters
newDescribeScalingPlansRequest :: DescribeScalingPlansRequest
newDescribeScalingPlansRequest  = DescribeScalingPlansRequest { "ApplicationSources": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ScalingPlanNames": (NullOrUndefined Nothing), "ScalingPlanVersion": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPlansRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPlansRequest' :: ( { "ScalingPlanNames" :: NullOrUndefined (ScalingPlanNames) , "ScalingPlanVersion" :: NullOrUndefined (ScalingPlanVersion) , "ApplicationSources" :: NullOrUndefined (ApplicationSources) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (NextToken) } -> {"ScalingPlanNames" :: NullOrUndefined (ScalingPlanNames) , "ScalingPlanVersion" :: NullOrUndefined (ScalingPlanVersion) , "ApplicationSources" :: NullOrUndefined (ApplicationSources) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (NextToken) } ) -> DescribeScalingPlansRequest
newDescribeScalingPlansRequest'  customize = (DescribeScalingPlansRequest <<< customize) { "ApplicationSources": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ScalingPlanNames": (NullOrUndefined Nothing), "ScalingPlanVersion": (NullOrUndefined Nothing) }



newtype DescribeScalingPlansResponse = DescribeScalingPlansResponse 
  { "ScalingPlans" :: NullOrUndefined (ScalingPlans)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeScalingPlansResponse :: Newtype DescribeScalingPlansResponse _
derive instance repGenericDescribeScalingPlansResponse :: Generic DescribeScalingPlansResponse _
instance showDescribeScalingPlansResponse :: Show DescribeScalingPlansResponse where show = genericShow
instance decodeDescribeScalingPlansResponse :: Decode DescribeScalingPlansResponse where decode = genericDecode options
instance encodeDescribeScalingPlansResponse :: Encode DescribeScalingPlansResponse where encode = genericEncode options

-- | Constructs DescribeScalingPlansResponse from required parameters
newDescribeScalingPlansResponse :: DescribeScalingPlansResponse
newDescribeScalingPlansResponse  = DescribeScalingPlansResponse { "NextToken": (NullOrUndefined Nothing), "ScalingPlans": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPlansResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPlansResponse' :: ( { "ScalingPlans" :: NullOrUndefined (ScalingPlans) , "NextToken" :: NullOrUndefined (NextToken) } -> {"ScalingPlans" :: NullOrUndefined (ScalingPlans) , "NextToken" :: NullOrUndefined (NextToken) } ) -> DescribeScalingPlansResponse
newDescribeScalingPlansResponse'  customize = (DescribeScalingPlansResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingPlans": (NullOrUndefined Nothing) }



newtype DisableScaleIn = DisableScaleIn Boolean
derive instance newtypeDisableScaleIn :: Newtype DisableScaleIn _
derive instance repGenericDisableScaleIn :: Generic DisableScaleIn _
instance showDisableScaleIn :: Show DisableScaleIn where show = genericShow
instance decodeDisableScaleIn :: Decode DisableScaleIn where decode = genericDecode options
instance encodeDisableScaleIn :: Encode DisableScaleIn where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>The service encountered an internal error.</p>
newtype InternalServiceException = InternalServiceException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServiceException :: Newtype InternalServiceException _
derive instance repGenericInternalServiceException :: Generic InternalServiceException _
instance showInternalServiceException :: Show InternalServiceException where show = genericShow
instance decodeInternalServiceException :: Decode InternalServiceException where decode = genericDecode options
instance encodeInternalServiceException :: Encode InternalServiceException where encode = genericEncode options

-- | Constructs InternalServiceException from required parameters
newInternalServiceException :: InternalServiceException
newInternalServiceException  = InternalServiceException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServiceException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> InternalServiceException
newInternalServiceException'  customize = (InternalServiceException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The token provided is not valid.</p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Your account exceeded a limit. This exception is thrown when a per-account resource limit is exceeded.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | <p>Represents a dimension for a customized metric.</p>
newtype MetricDimension = MetricDimension 
  { "Name" :: (MetricDimensionName)
  , "Value" :: (MetricDimensionValue)
  }
derive instance newtypeMetricDimension :: Newtype MetricDimension _
derive instance repGenericMetricDimension :: Generic MetricDimension _
instance showMetricDimension :: Show MetricDimension where show = genericShow
instance decodeMetricDimension :: Decode MetricDimension where decode = genericDecode options
instance encodeMetricDimension :: Encode MetricDimension where encode = genericEncode options

-- | Constructs MetricDimension from required parameters
newMetricDimension :: MetricDimensionName -> MetricDimensionValue -> MetricDimension
newMetricDimension _Name _Value = MetricDimension { "Name": _Name, "Value": _Value }

-- | Constructs MetricDimension's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricDimension' :: MetricDimensionName -> MetricDimensionValue -> ( { "Name" :: (MetricDimensionName) , "Value" :: (MetricDimensionValue) } -> {"Name" :: (MetricDimensionName) , "Value" :: (MetricDimensionValue) } ) -> MetricDimension
newMetricDimension' _Name _Value customize = (MetricDimension <<< customize) { "Name": _Name, "Value": _Value }



newtype MetricDimensionName = MetricDimensionName String
derive instance newtypeMetricDimensionName :: Newtype MetricDimensionName _
derive instance repGenericMetricDimensionName :: Generic MetricDimensionName _
instance showMetricDimensionName :: Show MetricDimensionName where show = genericShow
instance decodeMetricDimensionName :: Decode MetricDimensionName where decode = genericDecode options
instance encodeMetricDimensionName :: Encode MetricDimensionName where encode = genericEncode options



newtype MetricDimensionValue = MetricDimensionValue String
derive instance newtypeMetricDimensionValue :: Newtype MetricDimensionValue _
derive instance repGenericMetricDimensionValue :: Generic MetricDimensionValue _
instance showMetricDimensionValue :: Show MetricDimensionValue where show = genericShow
instance decodeMetricDimensionValue :: Decode MetricDimensionValue where decode = genericDecode options
instance encodeMetricDimensionValue :: Encode MetricDimensionValue where encode = genericEncode options



newtype MetricDimensions = MetricDimensions (Array MetricDimension)
derive instance newtypeMetricDimensions :: Newtype MetricDimensions _
derive instance repGenericMetricDimensions :: Generic MetricDimensions _
instance showMetricDimensions :: Show MetricDimensions where show = genericShow
instance decodeMetricDimensions :: Decode MetricDimensions where decode = genericDecode options
instance encodeMetricDimensions :: Encode MetricDimensions where encode = genericEncode options



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where show = genericShow
instance decodeMetricName :: Decode MetricName where decode = genericDecode options
instance encodeMetricName :: Encode MetricName where encode = genericEncode options



newtype MetricNamespace = MetricNamespace String
derive instance newtypeMetricNamespace :: Newtype MetricNamespace _
derive instance repGenericMetricNamespace :: Generic MetricNamespace _
instance showMetricNamespace :: Show MetricNamespace where show = genericShow
instance decodeMetricNamespace :: Decode MetricNamespace where decode = genericDecode options
instance encodeMetricNamespace :: Encode MetricNamespace where encode = genericEncode options



newtype MetricScale = MetricScale Number
derive instance newtypeMetricScale :: Newtype MetricScale _
derive instance repGenericMetricScale :: Generic MetricScale _
instance showMetricScale :: Show MetricScale where show = genericShow
instance decodeMetricScale :: Decode MetricScale where decode = genericDecode options
instance encodeMetricScale :: Encode MetricScale where encode = genericEncode options



newtype MetricStatistic = MetricStatistic String
derive instance newtypeMetricStatistic :: Newtype MetricStatistic _
derive instance repGenericMetricStatistic :: Generic MetricStatistic _
instance showMetricStatistic :: Show MetricStatistic where show = genericShow
instance decodeMetricStatistic :: Decode MetricStatistic where decode = genericDecode options
instance encodeMetricStatistic :: Encode MetricStatistic where encode = genericEncode options



newtype MetricUnit = MetricUnit String
derive instance newtypeMetricUnit :: Newtype MetricUnit _
derive instance repGenericMetricUnit :: Generic MetricUnit _
instance showMetricUnit :: Show MetricUnit where show = genericShow
instance decodeMetricUnit :: Decode MetricUnit where decode = genericDecode options
instance encodeMetricUnit :: Encode MetricUnit where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>The specified object could not be found.</p>
newtype ObjectNotFoundException = ObjectNotFoundException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeObjectNotFoundException :: Newtype ObjectNotFoundException _
derive instance repGenericObjectNotFoundException :: Generic ObjectNotFoundException _
instance showObjectNotFoundException :: Show ObjectNotFoundException where show = genericShow
instance decodeObjectNotFoundException :: Decode ObjectNotFoundException where decode = genericDecode options
instance encodeObjectNotFoundException :: Encode ObjectNotFoundException where encode = genericEncode options

-- | Constructs ObjectNotFoundException from required parameters
newObjectNotFoundException :: ObjectNotFoundException
newObjectNotFoundException  = ObjectNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ObjectNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newObjectNotFoundException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ObjectNotFoundException
newObjectNotFoundException'  customize = (ObjectNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where show = genericShow
instance decodePolicyName :: Decode PolicyName where decode = genericDecode options
instance encodePolicyName :: Encode PolicyName where encode = genericEncode options



newtype PolicyType = PolicyType String
derive instance newtypePolicyType :: Newtype PolicyType _
derive instance repGenericPolicyType :: Generic PolicyType _
instance showPolicyType :: Show PolicyType where show = genericShow
instance decodePolicyType :: Decode PolicyType where decode = genericDecode options
instance encodePolicyType :: Encode PolicyType where encode = genericEncode options



-- | <p>Represents a predefined metric for a target tracking policy.</p>
newtype PredefinedScalingMetricSpecification = PredefinedScalingMetricSpecification 
  { "PredefinedScalingMetricType" :: (ScalingMetricType)
  , "ResourceLabel" :: NullOrUndefined (ResourceLabel)
  }
derive instance newtypePredefinedScalingMetricSpecification :: Newtype PredefinedScalingMetricSpecification _
derive instance repGenericPredefinedScalingMetricSpecification :: Generic PredefinedScalingMetricSpecification _
instance showPredefinedScalingMetricSpecification :: Show PredefinedScalingMetricSpecification where show = genericShow
instance decodePredefinedScalingMetricSpecification :: Decode PredefinedScalingMetricSpecification where decode = genericDecode options
instance encodePredefinedScalingMetricSpecification :: Encode PredefinedScalingMetricSpecification where encode = genericEncode options

-- | Constructs PredefinedScalingMetricSpecification from required parameters
newPredefinedScalingMetricSpecification :: ScalingMetricType -> PredefinedScalingMetricSpecification
newPredefinedScalingMetricSpecification _PredefinedScalingMetricType = PredefinedScalingMetricSpecification { "PredefinedScalingMetricType": _PredefinedScalingMetricType, "ResourceLabel": (NullOrUndefined Nothing) }

-- | Constructs PredefinedScalingMetricSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPredefinedScalingMetricSpecification' :: ScalingMetricType -> ( { "PredefinedScalingMetricType" :: (ScalingMetricType) , "ResourceLabel" :: NullOrUndefined (ResourceLabel) } -> {"PredefinedScalingMetricType" :: (ScalingMetricType) , "ResourceLabel" :: NullOrUndefined (ResourceLabel) } ) -> PredefinedScalingMetricSpecification
newPredefinedScalingMetricSpecification' _PredefinedScalingMetricType customize = (PredefinedScalingMetricSpecification <<< customize) { "PredefinedScalingMetricType": _PredefinedScalingMetricType, "ResourceLabel": (NullOrUndefined Nothing) }



newtype ResourceCapacity = ResourceCapacity Int
derive instance newtypeResourceCapacity :: Newtype ResourceCapacity _
derive instance repGenericResourceCapacity :: Generic ResourceCapacity _
instance showResourceCapacity :: Show ResourceCapacity where show = genericShow
instance decodeResourceCapacity :: Decode ResourceCapacity where decode = genericDecode options
instance encodeResourceCapacity :: Encode ResourceCapacity where encode = genericEncode options



newtype ResourceIdMaxLen1600 = ResourceIdMaxLen1600 String
derive instance newtypeResourceIdMaxLen1600 :: Newtype ResourceIdMaxLen1600 _
derive instance repGenericResourceIdMaxLen1600 :: Generic ResourceIdMaxLen1600 _
instance showResourceIdMaxLen1600 :: Show ResourceIdMaxLen1600 where show = genericShow
instance decodeResourceIdMaxLen1600 :: Decode ResourceIdMaxLen1600 where decode = genericDecode options
instance encodeResourceIdMaxLen1600 :: Encode ResourceIdMaxLen1600 where encode = genericEncode options



newtype ResourceLabel = ResourceLabel String
derive instance newtypeResourceLabel :: Newtype ResourceLabel _
derive instance repGenericResourceLabel :: Generic ResourceLabel _
instance showResourceLabel :: Show ResourceLabel where show = genericShow
instance decodeResourceLabel :: Decode ResourceLabel where decode = genericDecode options
instance encodeResourceLabel :: Encode ResourceLabel where encode = genericEncode options



newtype ScalableDimension = ScalableDimension String
derive instance newtypeScalableDimension :: Newtype ScalableDimension _
derive instance repGenericScalableDimension :: Generic ScalableDimension _
instance showScalableDimension :: Show ScalableDimension where show = genericShow
instance decodeScalableDimension :: Decode ScalableDimension where decode = genericDecode options
instance encodeScalableDimension :: Encode ScalableDimension where encode = genericEncode options



-- | <p>Specifies the scaling configuration for a scalable resource.</p>
newtype ScalingInstruction = ScalingInstruction 
  { "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "MinCapacity" :: (ResourceCapacity)
  , "MaxCapacity" :: (ResourceCapacity)
  , "TargetTrackingConfigurations" :: (TargetTrackingConfigurations)
  }
derive instance newtypeScalingInstruction :: Newtype ScalingInstruction _
derive instance repGenericScalingInstruction :: Generic ScalingInstruction _
instance showScalingInstruction :: Show ScalingInstruction where show = genericShow
instance decodeScalingInstruction :: Decode ScalingInstruction where decode = genericDecode options
instance encodeScalingInstruction :: Encode ScalingInstruction where encode = genericEncode options

-- | Constructs ScalingInstruction from required parameters
newScalingInstruction :: ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TargetTrackingConfigurations -> ScalingInstruction
newScalingInstruction _MaxCapacity _MinCapacity _ResourceId _ScalableDimension _ServiceNamespace _TargetTrackingConfigurations = ScalingInstruction { "MaxCapacity": _MaxCapacity, "MinCapacity": _MinCapacity, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "TargetTrackingConfigurations": _TargetTrackingConfigurations }

-- | Constructs ScalingInstruction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingInstruction' :: ResourceCapacity -> ResourceCapacity -> ResourceIdMaxLen1600 -> ScalableDimension -> ServiceNamespace -> TargetTrackingConfigurations -> ( { "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: (ResourceCapacity) , "MaxCapacity" :: (ResourceCapacity) , "TargetTrackingConfigurations" :: (TargetTrackingConfigurations) } -> {"ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "MinCapacity" :: (ResourceCapacity) , "MaxCapacity" :: (ResourceCapacity) , "TargetTrackingConfigurations" :: (TargetTrackingConfigurations) } ) -> ScalingInstruction
newScalingInstruction' _MaxCapacity _MinCapacity _ResourceId _ScalableDimension _ServiceNamespace _TargetTrackingConfigurations customize = (ScalingInstruction <<< customize) { "MaxCapacity": _MaxCapacity, "MinCapacity": _MinCapacity, "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ServiceNamespace": _ServiceNamespace, "TargetTrackingConfigurations": _TargetTrackingConfigurations }



newtype ScalingInstructions = ScalingInstructions (Array ScalingInstruction)
derive instance newtypeScalingInstructions :: Newtype ScalingInstructions _
derive instance repGenericScalingInstructions :: Generic ScalingInstructions _
instance showScalingInstructions :: Show ScalingInstructions where show = genericShow
instance decodeScalingInstructions :: Decode ScalingInstructions where decode = genericDecode options
instance encodeScalingInstructions :: Encode ScalingInstructions where encode = genericEncode options



newtype ScalingMetricType = ScalingMetricType String
derive instance newtypeScalingMetricType :: Newtype ScalingMetricType _
derive instance repGenericScalingMetricType :: Generic ScalingMetricType _
instance showScalingMetricType :: Show ScalingMetricType where show = genericShow
instance decodeScalingMetricType :: Decode ScalingMetricType where decode = genericDecode options
instance encodeScalingMetricType :: Encode ScalingMetricType where encode = genericEncode options



-- | <p>Represents a scaling plan.</p>
newtype ScalingPlan = ScalingPlan 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ScalingPlanVersion" :: (ScalingPlanVersion)
  , "ApplicationSource" :: (ApplicationSource)
  , "ScalingInstructions" :: (ScalingInstructions)
  , "StatusCode" :: (ScalingPlanStatusCode)
  , "StatusMessage" :: NullOrUndefined (XmlString)
  , "CreationTime" :: NullOrUndefined (TimestampType)
  }
derive instance newtypeScalingPlan :: Newtype ScalingPlan _
derive instance repGenericScalingPlan :: Generic ScalingPlan _
instance showScalingPlan :: Show ScalingPlan where show = genericShow
instance decodeScalingPlan :: Decode ScalingPlan where decode = genericDecode options
instance encodeScalingPlan :: Encode ScalingPlan where encode = genericEncode options

-- | Constructs ScalingPlan from required parameters
newScalingPlan :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> ScalingPlanVersion -> ScalingPlanStatusCode -> ScalingPlan
newScalingPlan _ApplicationSource _ScalingInstructions _ScalingPlanName _ScalingPlanVersion _StatusCode = ScalingPlan { "ApplicationSource": _ApplicationSource, "ScalingInstructions": _ScalingInstructions, "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "StatusCode": _StatusCode, "CreationTime": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing) }

-- | Constructs ScalingPlan's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPlan' :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> ScalingPlanVersion -> ScalingPlanStatusCode -> ( { "ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "ApplicationSource" :: (ApplicationSource) , "ScalingInstructions" :: (ScalingInstructions) , "StatusCode" :: (ScalingPlanStatusCode) , "StatusMessage" :: NullOrUndefined (XmlString) , "CreationTime" :: NullOrUndefined (TimestampType) } -> {"ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "ApplicationSource" :: (ApplicationSource) , "ScalingInstructions" :: (ScalingInstructions) , "StatusCode" :: (ScalingPlanStatusCode) , "StatusMessage" :: NullOrUndefined (XmlString) , "CreationTime" :: NullOrUndefined (TimestampType) } ) -> ScalingPlan
newScalingPlan' _ApplicationSource _ScalingInstructions _ScalingPlanName _ScalingPlanVersion _StatusCode customize = (ScalingPlan <<< customize) { "ApplicationSource": _ApplicationSource, "ScalingInstructions": _ScalingInstructions, "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "StatusCode": _StatusCode, "CreationTime": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing) }



newtype ScalingPlanName = ScalingPlanName String
derive instance newtypeScalingPlanName :: Newtype ScalingPlanName _
derive instance repGenericScalingPlanName :: Generic ScalingPlanName _
instance showScalingPlanName :: Show ScalingPlanName where show = genericShow
instance decodeScalingPlanName :: Decode ScalingPlanName where decode = genericDecode options
instance encodeScalingPlanName :: Encode ScalingPlanName where encode = genericEncode options



newtype ScalingPlanNames = ScalingPlanNames (Array ScalingPlanName)
derive instance newtypeScalingPlanNames :: Newtype ScalingPlanNames _
derive instance repGenericScalingPlanNames :: Generic ScalingPlanNames _
instance showScalingPlanNames :: Show ScalingPlanNames where show = genericShow
instance decodeScalingPlanNames :: Decode ScalingPlanNames where decode = genericDecode options
instance encodeScalingPlanNames :: Encode ScalingPlanNames where encode = genericEncode options



-- | <p>Represents a scalable resource.</p>
newtype ScalingPlanResource = ScalingPlanResource 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ScalingPlanVersion" :: (ScalingPlanVersion)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "ScalingPolicies" :: NullOrUndefined (ScalingPolicies)
  , "ScalingStatusCode" :: (ScalingStatusCode)
  , "ScalingStatusMessage" :: NullOrUndefined (XmlString)
  }
derive instance newtypeScalingPlanResource :: Newtype ScalingPlanResource _
derive instance repGenericScalingPlanResource :: Generic ScalingPlanResource _
instance showScalingPlanResource :: Show ScalingPlanResource where show = genericShow
instance decodeScalingPlanResource :: Decode ScalingPlanResource where decode = genericDecode options
instance encodeScalingPlanResource :: Encode ScalingPlanResource where encode = genericEncode options

-- | Constructs ScalingPlanResource from required parameters
newScalingPlanResource :: ResourceIdMaxLen1600 -> ScalableDimension -> ScalingPlanName -> ScalingPlanVersion -> ScalingStatusCode -> ServiceNamespace -> ScalingPlanResource
newScalingPlanResource _ResourceId _ScalableDimension _ScalingPlanName _ScalingPlanVersion _ScalingStatusCode _ServiceNamespace = ScalingPlanResource { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "ScalingStatusCode": _ScalingStatusCode, "ServiceNamespace": _ServiceNamespace, "ScalingPolicies": (NullOrUndefined Nothing), "ScalingStatusMessage": (NullOrUndefined Nothing) }

-- | Constructs ScalingPlanResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPlanResource' :: ResourceIdMaxLen1600 -> ScalableDimension -> ScalingPlanName -> ScalingPlanVersion -> ScalingStatusCode -> ServiceNamespace -> ( { "ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "ScalingPolicies" :: NullOrUndefined (ScalingPolicies) , "ScalingStatusCode" :: (ScalingStatusCode) , "ScalingStatusMessage" :: NullOrUndefined (XmlString) } -> {"ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "ScalingPolicies" :: NullOrUndefined (ScalingPolicies) , "ScalingStatusCode" :: (ScalingStatusCode) , "ScalingStatusMessage" :: NullOrUndefined (XmlString) } ) -> ScalingPlanResource
newScalingPlanResource' _ResourceId _ScalableDimension _ScalingPlanName _ScalingPlanVersion _ScalingStatusCode _ServiceNamespace customize = (ScalingPlanResource <<< customize) { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "ScalingStatusCode": _ScalingStatusCode, "ServiceNamespace": _ServiceNamespace, "ScalingPolicies": (NullOrUndefined Nothing), "ScalingStatusMessage": (NullOrUndefined Nothing) }



newtype ScalingPlanResources = ScalingPlanResources (Array ScalingPlanResource)
derive instance newtypeScalingPlanResources :: Newtype ScalingPlanResources _
derive instance repGenericScalingPlanResources :: Generic ScalingPlanResources _
instance showScalingPlanResources :: Show ScalingPlanResources where show = genericShow
instance decodeScalingPlanResources :: Decode ScalingPlanResources where decode = genericDecode options
instance encodeScalingPlanResources :: Encode ScalingPlanResources where encode = genericEncode options



newtype ScalingPlanStatusCode = ScalingPlanStatusCode String
derive instance newtypeScalingPlanStatusCode :: Newtype ScalingPlanStatusCode _
derive instance repGenericScalingPlanStatusCode :: Generic ScalingPlanStatusCode _
instance showScalingPlanStatusCode :: Show ScalingPlanStatusCode where show = genericShow
instance decodeScalingPlanStatusCode :: Decode ScalingPlanStatusCode where decode = genericDecode options
instance encodeScalingPlanStatusCode :: Encode ScalingPlanStatusCode where encode = genericEncode options



newtype ScalingPlanVersion = ScalingPlanVersion Number
derive instance newtypeScalingPlanVersion :: Newtype ScalingPlanVersion _
derive instance repGenericScalingPlanVersion :: Generic ScalingPlanVersion _
instance showScalingPlanVersion :: Show ScalingPlanVersion where show = genericShow
instance decodeScalingPlanVersion :: Decode ScalingPlanVersion where decode = genericDecode options
instance encodeScalingPlanVersion :: Encode ScalingPlanVersion where encode = genericEncode options



newtype ScalingPlans = ScalingPlans (Array ScalingPlan)
derive instance newtypeScalingPlans :: Newtype ScalingPlans _
derive instance repGenericScalingPlans :: Generic ScalingPlans _
instance showScalingPlans :: Show ScalingPlans where show = genericShow
instance decodeScalingPlans :: Decode ScalingPlans where decode = genericDecode options
instance encodeScalingPlans :: Encode ScalingPlans where encode = genericEncode options



newtype ScalingPolicies = ScalingPolicies (Array ScalingPolicy)
derive instance newtypeScalingPolicies :: Newtype ScalingPolicies _
derive instance repGenericScalingPolicies :: Generic ScalingPolicies _
instance showScalingPolicies :: Show ScalingPolicies where show = genericShow
instance decodeScalingPolicies :: Decode ScalingPolicies where decode = genericDecode options
instance encodeScalingPolicies :: Encode ScalingPolicies where encode = genericEncode options



-- | <p>Represents a scaling policy.</p>
newtype ScalingPolicy = ScalingPolicy 
  { "PolicyName" :: (PolicyName)
  , "PolicyType" :: (PolicyType)
  , "TargetTrackingConfiguration" :: NullOrUndefined (TargetTrackingConfiguration)
  }
derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
derive instance repGenericScalingPolicy :: Generic ScalingPolicy _
instance showScalingPolicy :: Show ScalingPolicy where show = genericShow
instance decodeScalingPolicy :: Decode ScalingPolicy where decode = genericDecode options
instance encodeScalingPolicy :: Encode ScalingPolicy where encode = genericEncode options

-- | Constructs ScalingPolicy from required parameters
newScalingPolicy :: PolicyName -> PolicyType -> ScalingPolicy
newScalingPolicy _PolicyName _PolicyType = ScalingPolicy { "PolicyName": _PolicyName, "PolicyType": _PolicyType, "TargetTrackingConfiguration": (NullOrUndefined Nothing) }

-- | Constructs ScalingPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPolicy' :: PolicyName -> PolicyType -> ( { "PolicyName" :: (PolicyName) , "PolicyType" :: (PolicyType) , "TargetTrackingConfiguration" :: NullOrUndefined (TargetTrackingConfiguration) } -> {"PolicyName" :: (PolicyName) , "PolicyType" :: (PolicyType) , "TargetTrackingConfiguration" :: NullOrUndefined (TargetTrackingConfiguration) } ) -> ScalingPolicy
newScalingPolicy' _PolicyName _PolicyType customize = (ScalingPolicy <<< customize) { "PolicyName": _PolicyName, "PolicyType": _PolicyType, "TargetTrackingConfiguration": (NullOrUndefined Nothing) }



newtype ScalingStatusCode = ScalingStatusCode String
derive instance newtypeScalingStatusCode :: Newtype ScalingStatusCode _
derive instance repGenericScalingStatusCode :: Generic ScalingStatusCode _
instance showScalingStatusCode :: Show ScalingStatusCode where show = genericShow
instance decodeScalingStatusCode :: Decode ScalingStatusCode where decode = genericDecode options
instance encodeScalingStatusCode :: Encode ScalingStatusCode where encode = genericEncode options



newtype ServiceNamespace = ServiceNamespace String
derive instance newtypeServiceNamespace :: Newtype ServiceNamespace _
derive instance repGenericServiceNamespace :: Generic ServiceNamespace _
instance showServiceNamespace :: Show ServiceNamespace where show = genericShow
instance decodeServiceNamespace :: Decode ServiceNamespace where decode = genericDecode options
instance encodeServiceNamespace :: Encode ServiceNamespace where encode = genericEncode options



-- | <p>Represents a target tracking scaling policy.</p>
newtype TargetTrackingConfiguration = TargetTrackingConfiguration 
  { "PredefinedScalingMetricSpecification" :: NullOrUndefined (PredefinedScalingMetricSpecification)
  , "CustomizedScalingMetricSpecification" :: NullOrUndefined (CustomizedScalingMetricSpecification)
  , "TargetValue" :: (MetricScale)
  , "DisableScaleIn" :: NullOrUndefined (DisableScaleIn)
  , "ScaleOutCooldown" :: NullOrUndefined (Cooldown)
  , "ScaleInCooldown" :: NullOrUndefined (Cooldown)
  , "EstimatedInstanceWarmup" :: NullOrUndefined (Cooldown)
  }
derive instance newtypeTargetTrackingConfiguration :: Newtype TargetTrackingConfiguration _
derive instance repGenericTargetTrackingConfiguration :: Generic TargetTrackingConfiguration _
instance showTargetTrackingConfiguration :: Show TargetTrackingConfiguration where show = genericShow
instance decodeTargetTrackingConfiguration :: Decode TargetTrackingConfiguration where decode = genericDecode options
instance encodeTargetTrackingConfiguration :: Encode TargetTrackingConfiguration where encode = genericEncode options

-- | Constructs TargetTrackingConfiguration from required parameters
newTargetTrackingConfiguration :: MetricScale -> TargetTrackingConfiguration
newTargetTrackingConfiguration _TargetValue = TargetTrackingConfiguration { "TargetValue": _TargetValue, "CustomizedScalingMetricSpecification": (NullOrUndefined Nothing), "DisableScaleIn": (NullOrUndefined Nothing), "EstimatedInstanceWarmup": (NullOrUndefined Nothing), "PredefinedScalingMetricSpecification": (NullOrUndefined Nothing), "ScaleInCooldown": (NullOrUndefined Nothing), "ScaleOutCooldown": (NullOrUndefined Nothing) }

-- | Constructs TargetTrackingConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetTrackingConfiguration' :: MetricScale -> ( { "PredefinedScalingMetricSpecification" :: NullOrUndefined (PredefinedScalingMetricSpecification) , "CustomizedScalingMetricSpecification" :: NullOrUndefined (CustomizedScalingMetricSpecification) , "TargetValue" :: (MetricScale) , "DisableScaleIn" :: NullOrUndefined (DisableScaleIn) , "ScaleOutCooldown" :: NullOrUndefined (Cooldown) , "ScaleInCooldown" :: NullOrUndefined (Cooldown) , "EstimatedInstanceWarmup" :: NullOrUndefined (Cooldown) } -> {"PredefinedScalingMetricSpecification" :: NullOrUndefined (PredefinedScalingMetricSpecification) , "CustomizedScalingMetricSpecification" :: NullOrUndefined (CustomizedScalingMetricSpecification) , "TargetValue" :: (MetricScale) , "DisableScaleIn" :: NullOrUndefined (DisableScaleIn) , "ScaleOutCooldown" :: NullOrUndefined (Cooldown) , "ScaleInCooldown" :: NullOrUndefined (Cooldown) , "EstimatedInstanceWarmup" :: NullOrUndefined (Cooldown) } ) -> TargetTrackingConfiguration
newTargetTrackingConfiguration' _TargetValue customize = (TargetTrackingConfiguration <<< customize) { "TargetValue": _TargetValue, "CustomizedScalingMetricSpecification": (NullOrUndefined Nothing), "DisableScaleIn": (NullOrUndefined Nothing), "EstimatedInstanceWarmup": (NullOrUndefined Nothing), "PredefinedScalingMetricSpecification": (NullOrUndefined Nothing), "ScaleInCooldown": (NullOrUndefined Nothing), "ScaleOutCooldown": (NullOrUndefined Nothing) }



newtype TargetTrackingConfigurations = TargetTrackingConfigurations (Array TargetTrackingConfiguration)
derive instance newtypeTargetTrackingConfigurations :: Newtype TargetTrackingConfigurations _
derive instance repGenericTargetTrackingConfigurations :: Generic TargetTrackingConfigurations _
instance showTargetTrackingConfigurations :: Show TargetTrackingConfigurations where show = genericShow
instance decodeTargetTrackingConfigurations :: Decode TargetTrackingConfigurations where decode = genericDecode options
instance encodeTargetTrackingConfigurations :: Encode TargetTrackingConfigurations where encode = genericEncode options



newtype TimestampType = TimestampType Types.Timestamp
derive instance newtypeTimestampType :: Newtype TimestampType _
derive instance repGenericTimestampType :: Generic TimestampType _
instance showTimestampType :: Show TimestampType where show = genericShow
instance decodeTimestampType :: Decode TimestampType where decode = genericDecode options
instance encodeTimestampType :: Encode TimestampType where encode = genericEncode options



-- | <p>An exception was thrown for a validation issue. Review the parameters provided.</p>
newtype ValidationException = ValidationException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where show = genericShow
instance decodeValidationException :: Decode ValidationException where decode = genericDecode options
instance encodeValidationException :: Encode ValidationException where encode = genericEncode options

-- | Constructs ValidationException from required parameters
newValidationException :: ValidationException
newValidationException  = ValidationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ValidationException
newValidationException'  customize = (ValidationException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype XmlString = XmlString String
derive instance newtypeXmlString :: Newtype XmlString _
derive instance repGenericXmlString :: Generic XmlString _
instance showXmlString :: Show XmlString where show = genericShow
instance decodeXmlString :: Decode XmlString where decode = genericDecode options
instance encodeXmlString :: Encode XmlString where encode = genericEncode options

