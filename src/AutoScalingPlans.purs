

-- | <p>Use AWS Auto Scaling to quickly discover all the scalable AWS resources for your application and configure dynamic scaling for your scalable resources.</p> <p>To get started, create a scaling plan with a set of instructions used to configure dynamic scaling for the scalable resources in your application. AWS Auto Scaling creates target tracking scaling policies for the scalable resources in your scaling plan. Target tracking scaling policies adjust the capacity of your scalable resource as required to maintain resource utilization at the target value that you specified.</p>
module AWS.AutoScalingPlans where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Creates a scaling plan.</p> <p>A scaling plan contains a set of instructions used to configure dynamic scaling for the scalable resources in your application. AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions in your scaling plan.</p>
createScalingPlan :: forall eff. CreateScalingPlanRequest -> Aff (exception :: EXCEPTION | eff) CreateScalingPlanResponse
createScalingPlan = Request.request service method  where
    service = Request.ServiceName "AutoScalingPlans"
    method = Request.MethodName "createScalingPlan"


-- | <p>Deletes the specified scaling plan.</p>
deleteScalingPlan :: forall eff. DeleteScalingPlanRequest -> Aff (exception :: EXCEPTION | eff) DeleteScalingPlanResponse
deleteScalingPlan = Request.request service method  where
    service = Request.ServiceName "AutoScalingPlans"
    method = Request.MethodName "deleteScalingPlan"


-- | <p>Describes the scalable resources in the specified scaling plan.</p>
describeScalingPlanResources :: forall eff. DescribeScalingPlanResourcesRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalingPlanResourcesResponse
describeScalingPlanResources = Request.request service method  where
    service = Request.ServiceName "AutoScalingPlans"
    method = Request.MethodName "describeScalingPlanResources"


-- | <p>Describes the specified scaling plans or all of your scaling plans.</p>
describeScalingPlans :: forall eff. DescribeScalingPlansRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalingPlansResponse
describeScalingPlans = Request.request service method  where
    service = Request.ServiceName "AutoScalingPlans"
    method = Request.MethodName "describeScalingPlans"


-- | <p>Represents an application source.</p>
newtype ApplicationSource = ApplicationSource 
  { "CloudFormationStackARN" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeApplicationSource :: Newtype ApplicationSource _
derive instance repGenericApplicationSource :: Generic ApplicationSource _
instance showApplicationSource :: Show ApplicationSource where
  show = genericShow
instance decodeApplicationSource :: Decode ApplicationSource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationSource :: Encode ApplicationSource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ApplicationSource from required parameters
newApplicationSource :: ApplicationSource
newApplicationSource  = ApplicationSource { "CloudFormationStackARN": (NullOrUndefined Nothing) }

-- | Constructs ApplicationSource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationSource' :: ( { "CloudFormationStackARN" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"CloudFormationStackARN" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> ApplicationSource
newApplicationSource'  customize = (ApplicationSource <<< customize) { "CloudFormationStackARN": (NullOrUndefined Nothing) }



newtype ApplicationSources = ApplicationSources (Array ApplicationSource)
derive instance newtypeApplicationSources :: Newtype ApplicationSources _
derive instance repGenericApplicationSources :: Generic ApplicationSources _
instance showApplicationSources :: Show ApplicationSources where
  show = genericShow
instance decodeApplicationSources :: Decode ApplicationSources where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationSources :: Encode ApplicationSources where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Concurrent updates caused an exception, for example, if you request an update to a scaling plan that already has a pending update.</p>
newtype ConcurrentUpdateException = ConcurrentUpdateException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeConcurrentUpdateException :: Newtype ConcurrentUpdateException _
derive instance repGenericConcurrentUpdateException :: Generic ConcurrentUpdateException _
instance showConcurrentUpdateException :: Show ConcurrentUpdateException where
  show = genericShow
instance decodeConcurrentUpdateException :: Decode ConcurrentUpdateException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConcurrentUpdateException :: Encode ConcurrentUpdateException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConcurrentUpdateException from required parameters
newConcurrentUpdateException :: ConcurrentUpdateException
newConcurrentUpdateException  = ConcurrentUpdateException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ConcurrentUpdateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentUpdateException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ConcurrentUpdateException
newConcurrentUpdateException'  customize = (ConcurrentUpdateException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Cooldown = Cooldown Int
derive instance newtypeCooldown :: Newtype Cooldown _
derive instance repGenericCooldown :: Generic Cooldown _
instance showCooldown :: Show Cooldown where
  show = genericShow
instance decodeCooldown :: Decode Cooldown where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCooldown :: Encode Cooldown where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateScalingPlanRequest = CreateScalingPlanRequest 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ApplicationSource" :: (ApplicationSource)
  , "ScalingInstructions" :: (ScalingInstructions)
  }
derive instance newtypeCreateScalingPlanRequest :: Newtype CreateScalingPlanRequest _
derive instance repGenericCreateScalingPlanRequest :: Generic CreateScalingPlanRequest _
instance showCreateScalingPlanRequest :: Show CreateScalingPlanRequest where
  show = genericShow
instance decodeCreateScalingPlanRequest :: Decode CreateScalingPlanRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateScalingPlanRequest :: Encode CreateScalingPlanRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showCreateScalingPlanResponse :: Show CreateScalingPlanResponse where
  show = genericShow
instance decodeCreateScalingPlanResponse :: Decode CreateScalingPlanResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateScalingPlanResponse :: Encode CreateScalingPlanResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensions)
  , "Statistic" :: (MetricStatistic)
  , "Unit" :: NullOrUndefined.NullOrUndefined (MetricUnit)
  }
derive instance newtypeCustomizedScalingMetricSpecification :: Newtype CustomizedScalingMetricSpecification _
derive instance repGenericCustomizedScalingMetricSpecification :: Generic CustomizedScalingMetricSpecification _
instance showCustomizedScalingMetricSpecification :: Show CustomizedScalingMetricSpecification where
  show = genericShow
instance decodeCustomizedScalingMetricSpecification :: Decode CustomizedScalingMetricSpecification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCustomizedScalingMetricSpecification :: Encode CustomizedScalingMetricSpecification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CustomizedScalingMetricSpecification from required parameters
newCustomizedScalingMetricSpecification :: MetricName -> MetricNamespace -> MetricStatistic -> CustomizedScalingMetricSpecification
newCustomizedScalingMetricSpecification _MetricName _Namespace _Statistic = CustomizedScalingMetricSpecification { "MetricName": _MetricName, "Namespace": _Namespace, "Statistic": _Statistic, "Dimensions": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }

-- | Constructs CustomizedScalingMetricSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomizedScalingMetricSpecification' :: MetricName -> MetricNamespace -> MetricStatistic -> ( { "MetricName" :: (MetricName) , "Namespace" :: (MetricNamespace) , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensions) , "Statistic" :: (MetricStatistic) , "Unit" :: NullOrUndefined.NullOrUndefined (MetricUnit) } -> {"MetricName" :: (MetricName) , "Namespace" :: (MetricNamespace) , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensions) , "Statistic" :: (MetricStatistic) , "Unit" :: NullOrUndefined.NullOrUndefined (MetricUnit) } ) -> CustomizedScalingMetricSpecification
newCustomizedScalingMetricSpecification' _MetricName _Namespace _Statistic customize = (CustomizedScalingMetricSpecification <<< customize) { "MetricName": _MetricName, "Namespace": _Namespace, "Statistic": _Statistic, "Dimensions": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }



newtype DeleteScalingPlanRequest = DeleteScalingPlanRequest 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ScalingPlanVersion" :: (ScalingPlanVersion)
  }
derive instance newtypeDeleteScalingPlanRequest :: Newtype DeleteScalingPlanRequest _
derive instance repGenericDeleteScalingPlanRequest :: Generic DeleteScalingPlanRequest _
instance showDeleteScalingPlanRequest :: Show DeleteScalingPlanRequest where
  show = genericShow
instance decodeDeleteScalingPlanRequest :: Decode DeleteScalingPlanRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteScalingPlanRequest :: Encode DeleteScalingPlanRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeleteScalingPlanResponse :: Show DeleteScalingPlanResponse where
  show = genericShow
instance decodeDeleteScalingPlanResponse :: Decode DeleteScalingPlanResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteScalingPlanResponse :: Encode DeleteScalingPlanResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeScalingPlanResourcesRequest = DescribeScalingPlanResourcesRequest 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ScalingPlanVersion" :: (ScalingPlanVersion)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeScalingPlanResourcesRequest :: Newtype DescribeScalingPlanResourcesRequest _
derive instance repGenericDescribeScalingPlanResourcesRequest :: Generic DescribeScalingPlanResourcesRequest _
instance showDescribeScalingPlanResourcesRequest :: Show DescribeScalingPlanResourcesRequest where
  show = genericShow
instance decodeDescribeScalingPlanResourcesRequest :: Decode DescribeScalingPlanResourcesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalingPlanResourcesRequest :: Encode DescribeScalingPlanResourcesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalingPlanResourcesRequest from required parameters
newDescribeScalingPlanResourcesRequest :: ScalingPlanName -> ScalingPlanVersion -> DescribeScalingPlanResourcesRequest
newDescribeScalingPlanResourcesRequest _ScalingPlanName _ScalingPlanVersion = DescribeScalingPlanResourcesRequest { "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPlanResourcesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPlanResourcesRequest' :: ScalingPlanName -> ScalingPlanVersion -> ( { "ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> DescribeScalingPlanResourcesRequest
newDescribeScalingPlanResourcesRequest' _ScalingPlanName _ScalingPlanVersion customize = (DescribeScalingPlanResourcesRequest <<< customize) { "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeScalingPlanResourcesResponse = DescribeScalingPlanResourcesResponse 
  { "ScalingPlanResources" :: NullOrUndefined.NullOrUndefined (ScalingPlanResources)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeScalingPlanResourcesResponse :: Newtype DescribeScalingPlanResourcesResponse _
derive instance repGenericDescribeScalingPlanResourcesResponse :: Generic DescribeScalingPlanResourcesResponse _
instance showDescribeScalingPlanResourcesResponse :: Show DescribeScalingPlanResourcesResponse where
  show = genericShow
instance decodeDescribeScalingPlanResourcesResponse :: Decode DescribeScalingPlanResourcesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalingPlanResourcesResponse :: Encode DescribeScalingPlanResourcesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalingPlanResourcesResponse from required parameters
newDescribeScalingPlanResourcesResponse :: DescribeScalingPlanResourcesResponse
newDescribeScalingPlanResourcesResponse  = DescribeScalingPlanResourcesResponse { "NextToken": (NullOrUndefined Nothing), "ScalingPlanResources": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPlanResourcesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPlanResourcesResponse' :: ( { "ScalingPlanResources" :: NullOrUndefined.NullOrUndefined (ScalingPlanResources) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ScalingPlanResources" :: NullOrUndefined.NullOrUndefined (ScalingPlanResources) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> DescribeScalingPlanResourcesResponse
newDescribeScalingPlanResourcesResponse'  customize = (DescribeScalingPlanResourcesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingPlanResources": (NullOrUndefined Nothing) }



newtype DescribeScalingPlansRequest = DescribeScalingPlansRequest 
  { "ScalingPlanNames" :: NullOrUndefined.NullOrUndefined (ScalingPlanNames)
  , "ScalingPlanVersion" :: NullOrUndefined.NullOrUndefined (ScalingPlanVersion)
  , "ApplicationSources" :: NullOrUndefined.NullOrUndefined (ApplicationSources)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeScalingPlansRequest :: Newtype DescribeScalingPlansRequest _
derive instance repGenericDescribeScalingPlansRequest :: Generic DescribeScalingPlansRequest _
instance showDescribeScalingPlansRequest :: Show DescribeScalingPlansRequest where
  show = genericShow
instance decodeDescribeScalingPlansRequest :: Decode DescribeScalingPlansRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalingPlansRequest :: Encode DescribeScalingPlansRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalingPlansRequest from required parameters
newDescribeScalingPlansRequest :: DescribeScalingPlansRequest
newDescribeScalingPlansRequest  = DescribeScalingPlansRequest { "ApplicationSources": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ScalingPlanNames": (NullOrUndefined Nothing), "ScalingPlanVersion": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPlansRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPlansRequest' :: ( { "ScalingPlanNames" :: NullOrUndefined.NullOrUndefined (ScalingPlanNames) , "ScalingPlanVersion" :: NullOrUndefined.NullOrUndefined (ScalingPlanVersion) , "ApplicationSources" :: NullOrUndefined.NullOrUndefined (ApplicationSources) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ScalingPlanNames" :: NullOrUndefined.NullOrUndefined (ScalingPlanNames) , "ScalingPlanVersion" :: NullOrUndefined.NullOrUndefined (ScalingPlanVersion) , "ApplicationSources" :: NullOrUndefined.NullOrUndefined (ApplicationSources) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> DescribeScalingPlansRequest
newDescribeScalingPlansRequest'  customize = (DescribeScalingPlansRequest <<< customize) { "ApplicationSources": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ScalingPlanNames": (NullOrUndefined Nothing), "ScalingPlanVersion": (NullOrUndefined Nothing) }



newtype DescribeScalingPlansResponse = DescribeScalingPlansResponse 
  { "ScalingPlans" :: NullOrUndefined.NullOrUndefined (ScalingPlans)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeScalingPlansResponse :: Newtype DescribeScalingPlansResponse _
derive instance repGenericDescribeScalingPlansResponse :: Generic DescribeScalingPlansResponse _
instance showDescribeScalingPlansResponse :: Show DescribeScalingPlansResponse where
  show = genericShow
instance decodeDescribeScalingPlansResponse :: Decode DescribeScalingPlansResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeScalingPlansResponse :: Encode DescribeScalingPlansResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeScalingPlansResponse from required parameters
newDescribeScalingPlansResponse :: DescribeScalingPlansResponse
newDescribeScalingPlansResponse  = DescribeScalingPlansResponse { "NextToken": (NullOrUndefined Nothing), "ScalingPlans": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPlansResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPlansResponse' :: ( { "ScalingPlans" :: NullOrUndefined.NullOrUndefined (ScalingPlans) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ScalingPlans" :: NullOrUndefined.NullOrUndefined (ScalingPlans) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> DescribeScalingPlansResponse
newDescribeScalingPlansResponse'  customize = (DescribeScalingPlansResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingPlans": (NullOrUndefined Nothing) }



newtype DisableScaleIn = DisableScaleIn Boolean
derive instance newtypeDisableScaleIn :: Newtype DisableScaleIn _
derive instance repGenericDisableScaleIn :: Generic DisableScaleIn _
instance showDisableScaleIn :: Show DisableScaleIn where
  show = genericShow
instance decodeDisableScaleIn :: Decode DisableScaleIn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableScaleIn :: Encode DisableScaleIn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The service encountered an internal error.</p>
newtype InternalServiceException = InternalServiceException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServiceException :: Newtype InternalServiceException _
derive instance repGenericInternalServiceException :: Generic InternalServiceException _
instance showInternalServiceException :: Show InternalServiceException where
  show = genericShow
instance decodeInternalServiceException :: Decode InternalServiceException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServiceException :: Encode InternalServiceException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServiceException from required parameters
newInternalServiceException :: InternalServiceException
newInternalServiceException  = InternalServiceException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServiceException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalServiceException
newInternalServiceException'  customize = (InternalServiceException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The token provided is not valid.</p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where
  show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Your account exceeded a limit. This exception is thrown when a per-account resource limit is exceeded.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a dimension for a customized metric.</p>
newtype MetricDimension = MetricDimension 
  { "Name" :: (MetricDimensionName)
  , "Value" :: (MetricDimensionValue)
  }
derive instance newtypeMetricDimension :: Newtype MetricDimension _
derive instance repGenericMetricDimension :: Generic MetricDimension _
instance showMetricDimension :: Show MetricDimension where
  show = genericShow
instance decodeMetricDimension :: Decode MetricDimension where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimension :: Encode MetricDimension where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showMetricDimensionName :: Show MetricDimensionName where
  show = genericShow
instance decodeMetricDimensionName :: Decode MetricDimensionName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimensionName :: Encode MetricDimensionName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricDimensionValue = MetricDimensionValue String
derive instance newtypeMetricDimensionValue :: Newtype MetricDimensionValue _
derive instance repGenericMetricDimensionValue :: Generic MetricDimensionValue _
instance showMetricDimensionValue :: Show MetricDimensionValue where
  show = genericShow
instance decodeMetricDimensionValue :: Decode MetricDimensionValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimensionValue :: Encode MetricDimensionValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricDimensions = MetricDimensions (Array MetricDimension)
derive instance newtypeMetricDimensions :: Newtype MetricDimensions _
derive instance repGenericMetricDimensions :: Generic MetricDimensions _
instance showMetricDimensions :: Show MetricDimensions where
  show = genericShow
instance decodeMetricDimensions :: Decode MetricDimensions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimensions :: Encode MetricDimensions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where
  show = genericShow
instance decodeMetricName :: Decode MetricName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricName :: Encode MetricName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricNamespace = MetricNamespace String
derive instance newtypeMetricNamespace :: Newtype MetricNamespace _
derive instance repGenericMetricNamespace :: Generic MetricNamespace _
instance showMetricNamespace :: Show MetricNamespace where
  show = genericShow
instance decodeMetricNamespace :: Decode MetricNamespace where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricNamespace :: Encode MetricNamespace where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricScale = MetricScale Number
derive instance newtypeMetricScale :: Newtype MetricScale _
derive instance repGenericMetricScale :: Generic MetricScale _
instance showMetricScale :: Show MetricScale where
  show = genericShow
instance decodeMetricScale :: Decode MetricScale where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricScale :: Encode MetricScale where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricStatistic = MetricStatistic String
derive instance newtypeMetricStatistic :: Newtype MetricStatistic _
derive instance repGenericMetricStatistic :: Generic MetricStatistic _
instance showMetricStatistic :: Show MetricStatistic where
  show = genericShow
instance decodeMetricStatistic :: Decode MetricStatistic where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricStatistic :: Encode MetricStatistic where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MetricUnit = MetricUnit String
derive instance newtypeMetricUnit :: Newtype MetricUnit _
derive instance repGenericMetricUnit :: Generic MetricUnit _
instance showMetricUnit :: Show MetricUnit where
  show = genericShow
instance decodeMetricUnit :: Decode MetricUnit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricUnit :: Encode MetricUnit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where
  show = genericShow
instance decodeNextToken :: Decode NextToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken :: Encode NextToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified object could not be found.</p>
newtype ObjectNotFoundException = ObjectNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeObjectNotFoundException :: Newtype ObjectNotFoundException _
derive instance repGenericObjectNotFoundException :: Generic ObjectNotFoundException _
instance showObjectNotFoundException :: Show ObjectNotFoundException where
  show = genericShow
instance decodeObjectNotFoundException :: Decode ObjectNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeObjectNotFoundException :: Encode ObjectNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ObjectNotFoundException from required parameters
newObjectNotFoundException :: ObjectNotFoundException
newObjectNotFoundException  = ObjectNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ObjectNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newObjectNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ObjectNotFoundException
newObjectNotFoundException'  customize = (ObjectNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where
  show = genericShow
instance decodePolicyName :: Decode PolicyName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyName :: Encode PolicyName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyType = PolicyType String
derive instance newtypePolicyType :: Newtype PolicyType _
derive instance repGenericPolicyType :: Generic PolicyType _
instance showPolicyType :: Show PolicyType where
  show = genericShow
instance decodePolicyType :: Decode PolicyType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyType :: Encode PolicyType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a predefined metric for a target tracking policy.</p>
newtype PredefinedScalingMetricSpecification = PredefinedScalingMetricSpecification 
  { "PredefinedScalingMetricType" :: (ScalingMetricType)
  , "ResourceLabel" :: NullOrUndefined.NullOrUndefined (ResourceLabel)
  }
derive instance newtypePredefinedScalingMetricSpecification :: Newtype PredefinedScalingMetricSpecification _
derive instance repGenericPredefinedScalingMetricSpecification :: Generic PredefinedScalingMetricSpecification _
instance showPredefinedScalingMetricSpecification :: Show PredefinedScalingMetricSpecification where
  show = genericShow
instance decodePredefinedScalingMetricSpecification :: Decode PredefinedScalingMetricSpecification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePredefinedScalingMetricSpecification :: Encode PredefinedScalingMetricSpecification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PredefinedScalingMetricSpecification from required parameters
newPredefinedScalingMetricSpecification :: ScalingMetricType -> PredefinedScalingMetricSpecification
newPredefinedScalingMetricSpecification _PredefinedScalingMetricType = PredefinedScalingMetricSpecification { "PredefinedScalingMetricType": _PredefinedScalingMetricType, "ResourceLabel": (NullOrUndefined Nothing) }

-- | Constructs PredefinedScalingMetricSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPredefinedScalingMetricSpecification' :: ScalingMetricType -> ( { "PredefinedScalingMetricType" :: (ScalingMetricType) , "ResourceLabel" :: NullOrUndefined.NullOrUndefined (ResourceLabel) } -> {"PredefinedScalingMetricType" :: (ScalingMetricType) , "ResourceLabel" :: NullOrUndefined.NullOrUndefined (ResourceLabel) } ) -> PredefinedScalingMetricSpecification
newPredefinedScalingMetricSpecification' _PredefinedScalingMetricType customize = (PredefinedScalingMetricSpecification <<< customize) { "PredefinedScalingMetricType": _PredefinedScalingMetricType, "ResourceLabel": (NullOrUndefined Nothing) }



newtype ResourceCapacity = ResourceCapacity Int
derive instance newtypeResourceCapacity :: Newtype ResourceCapacity _
derive instance repGenericResourceCapacity :: Generic ResourceCapacity _
instance showResourceCapacity :: Show ResourceCapacity where
  show = genericShow
instance decodeResourceCapacity :: Decode ResourceCapacity where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceCapacity :: Encode ResourceCapacity where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceIdMaxLen1600 = ResourceIdMaxLen1600 String
derive instance newtypeResourceIdMaxLen1600 :: Newtype ResourceIdMaxLen1600 _
derive instance repGenericResourceIdMaxLen1600 :: Generic ResourceIdMaxLen1600 _
instance showResourceIdMaxLen1600 :: Show ResourceIdMaxLen1600 where
  show = genericShow
instance decodeResourceIdMaxLen1600 :: Decode ResourceIdMaxLen1600 where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceIdMaxLen1600 :: Encode ResourceIdMaxLen1600 where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceLabel = ResourceLabel String
derive instance newtypeResourceLabel :: Newtype ResourceLabel _
derive instance repGenericResourceLabel :: Generic ResourceLabel _
instance showResourceLabel :: Show ResourceLabel where
  show = genericShow
instance decodeResourceLabel :: Decode ResourceLabel where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceLabel :: Encode ResourceLabel where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalableDimension = ScalableDimension String
derive instance newtypeScalableDimension :: Newtype ScalableDimension _
derive instance repGenericScalableDimension :: Generic ScalableDimension _
instance showScalableDimension :: Show ScalableDimension where
  show = genericShow
instance decodeScalableDimension :: Decode ScalableDimension where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalableDimension :: Encode ScalableDimension where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



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
instance showScalingInstruction :: Show ScalingInstruction where
  show = genericShow
instance decodeScalingInstruction :: Decode ScalingInstruction where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingInstruction :: Encode ScalingInstruction where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showScalingInstructions :: Show ScalingInstructions where
  show = genericShow
instance decodeScalingInstructions :: Decode ScalingInstructions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingInstructions :: Encode ScalingInstructions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingMetricType = ScalingMetricType String
derive instance newtypeScalingMetricType :: Newtype ScalingMetricType _
derive instance repGenericScalingMetricType :: Generic ScalingMetricType _
instance showScalingMetricType :: Show ScalingMetricType where
  show = genericShow
instance decodeScalingMetricType :: Decode ScalingMetricType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingMetricType :: Encode ScalingMetricType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a scaling plan.</p>
newtype ScalingPlan = ScalingPlan 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ScalingPlanVersion" :: (ScalingPlanVersion)
  , "ApplicationSource" :: (ApplicationSource)
  , "ScalingInstructions" :: (ScalingInstructions)
  , "StatusCode" :: (ScalingPlanStatusCode)
  , "StatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (TimestampType)
  }
derive instance newtypeScalingPlan :: Newtype ScalingPlan _
derive instance repGenericScalingPlan :: Generic ScalingPlan _
instance showScalingPlan :: Show ScalingPlan where
  show = genericShow
instance decodeScalingPlan :: Decode ScalingPlan where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPlan :: Encode ScalingPlan where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingPlan from required parameters
newScalingPlan :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> ScalingPlanVersion -> ScalingPlanStatusCode -> ScalingPlan
newScalingPlan _ApplicationSource _ScalingInstructions _ScalingPlanName _ScalingPlanVersion _StatusCode = ScalingPlan { "ApplicationSource": _ApplicationSource, "ScalingInstructions": _ScalingInstructions, "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "StatusCode": _StatusCode, "CreationTime": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing) }

-- | Constructs ScalingPlan's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPlan' :: ApplicationSource -> ScalingInstructions -> ScalingPlanName -> ScalingPlanVersion -> ScalingPlanStatusCode -> ( { "ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "ApplicationSource" :: (ApplicationSource) , "ScalingInstructions" :: (ScalingInstructions) , "StatusCode" :: (ScalingPlanStatusCode) , "StatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString) , "CreationTime" :: NullOrUndefined.NullOrUndefined (TimestampType) } -> {"ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "ApplicationSource" :: (ApplicationSource) , "ScalingInstructions" :: (ScalingInstructions) , "StatusCode" :: (ScalingPlanStatusCode) , "StatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString) , "CreationTime" :: NullOrUndefined.NullOrUndefined (TimestampType) } ) -> ScalingPlan
newScalingPlan' _ApplicationSource _ScalingInstructions _ScalingPlanName _ScalingPlanVersion _StatusCode customize = (ScalingPlan <<< customize) { "ApplicationSource": _ApplicationSource, "ScalingInstructions": _ScalingInstructions, "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "StatusCode": _StatusCode, "CreationTime": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing) }



newtype ScalingPlanName = ScalingPlanName String
derive instance newtypeScalingPlanName :: Newtype ScalingPlanName _
derive instance repGenericScalingPlanName :: Generic ScalingPlanName _
instance showScalingPlanName :: Show ScalingPlanName where
  show = genericShow
instance decodeScalingPlanName :: Decode ScalingPlanName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPlanName :: Encode ScalingPlanName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingPlanNames = ScalingPlanNames (Array ScalingPlanName)
derive instance newtypeScalingPlanNames :: Newtype ScalingPlanNames _
derive instance repGenericScalingPlanNames :: Generic ScalingPlanNames _
instance showScalingPlanNames :: Show ScalingPlanNames where
  show = genericShow
instance decodeScalingPlanNames :: Decode ScalingPlanNames where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPlanNames :: Encode ScalingPlanNames where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a scalable resource.</p>
newtype ScalingPlanResource = ScalingPlanResource 
  { "ScalingPlanName" :: (ScalingPlanName)
  , "ScalingPlanVersion" :: (ScalingPlanVersion)
  , "ServiceNamespace" :: (ServiceNamespace)
  , "ResourceId" :: (ResourceIdMaxLen1600)
  , "ScalableDimension" :: (ScalableDimension)
  , "ScalingPolicies" :: NullOrUndefined.NullOrUndefined (ScalingPolicies)
  , "ScalingStatusCode" :: (ScalingStatusCode)
  , "ScalingStatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeScalingPlanResource :: Newtype ScalingPlanResource _
derive instance repGenericScalingPlanResource :: Generic ScalingPlanResource _
instance showScalingPlanResource :: Show ScalingPlanResource where
  show = genericShow
instance decodeScalingPlanResource :: Decode ScalingPlanResource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPlanResource :: Encode ScalingPlanResource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingPlanResource from required parameters
newScalingPlanResource :: ResourceIdMaxLen1600 -> ScalableDimension -> ScalingPlanName -> ScalingPlanVersion -> ScalingStatusCode -> ServiceNamespace -> ScalingPlanResource
newScalingPlanResource _ResourceId _ScalableDimension _ScalingPlanName _ScalingPlanVersion _ScalingStatusCode _ServiceNamespace = ScalingPlanResource { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "ScalingStatusCode": _ScalingStatusCode, "ServiceNamespace": _ServiceNamespace, "ScalingPolicies": (NullOrUndefined Nothing), "ScalingStatusMessage": (NullOrUndefined Nothing) }

-- | Constructs ScalingPlanResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPlanResource' :: ResourceIdMaxLen1600 -> ScalableDimension -> ScalingPlanName -> ScalingPlanVersion -> ScalingStatusCode -> ServiceNamespace -> ( { "ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "ScalingPolicies" :: NullOrUndefined.NullOrUndefined (ScalingPolicies) , "ScalingStatusCode" :: (ScalingStatusCode) , "ScalingStatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"ScalingPlanName" :: (ScalingPlanName) , "ScalingPlanVersion" :: (ScalingPlanVersion) , "ServiceNamespace" :: (ServiceNamespace) , "ResourceId" :: (ResourceIdMaxLen1600) , "ScalableDimension" :: (ScalableDimension) , "ScalingPolicies" :: NullOrUndefined.NullOrUndefined (ScalingPolicies) , "ScalingStatusCode" :: (ScalingStatusCode) , "ScalingStatusMessage" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> ScalingPlanResource
newScalingPlanResource' _ResourceId _ScalableDimension _ScalingPlanName _ScalingPlanVersion _ScalingStatusCode _ServiceNamespace customize = (ScalingPlanResource <<< customize) { "ResourceId": _ResourceId, "ScalableDimension": _ScalableDimension, "ScalingPlanName": _ScalingPlanName, "ScalingPlanVersion": _ScalingPlanVersion, "ScalingStatusCode": _ScalingStatusCode, "ServiceNamespace": _ServiceNamespace, "ScalingPolicies": (NullOrUndefined Nothing), "ScalingStatusMessage": (NullOrUndefined Nothing) }



newtype ScalingPlanResources = ScalingPlanResources (Array ScalingPlanResource)
derive instance newtypeScalingPlanResources :: Newtype ScalingPlanResources _
derive instance repGenericScalingPlanResources :: Generic ScalingPlanResources _
instance showScalingPlanResources :: Show ScalingPlanResources where
  show = genericShow
instance decodeScalingPlanResources :: Decode ScalingPlanResources where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPlanResources :: Encode ScalingPlanResources where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingPlanStatusCode = ScalingPlanStatusCode String
derive instance newtypeScalingPlanStatusCode :: Newtype ScalingPlanStatusCode _
derive instance repGenericScalingPlanStatusCode :: Generic ScalingPlanStatusCode _
instance showScalingPlanStatusCode :: Show ScalingPlanStatusCode where
  show = genericShow
instance decodeScalingPlanStatusCode :: Decode ScalingPlanStatusCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPlanStatusCode :: Encode ScalingPlanStatusCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingPlanVersion = ScalingPlanVersion Number
derive instance newtypeScalingPlanVersion :: Newtype ScalingPlanVersion _
derive instance repGenericScalingPlanVersion :: Generic ScalingPlanVersion _
instance showScalingPlanVersion :: Show ScalingPlanVersion where
  show = genericShow
instance decodeScalingPlanVersion :: Decode ScalingPlanVersion where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPlanVersion :: Encode ScalingPlanVersion where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingPlans = ScalingPlans (Array ScalingPlan)
derive instance newtypeScalingPlans :: Newtype ScalingPlans _
derive instance repGenericScalingPlans :: Generic ScalingPlans _
instance showScalingPlans :: Show ScalingPlans where
  show = genericShow
instance decodeScalingPlans :: Decode ScalingPlans where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPlans :: Encode ScalingPlans where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalingPolicies = ScalingPolicies (Array ScalingPolicy)
derive instance newtypeScalingPolicies :: Newtype ScalingPolicies _
derive instance repGenericScalingPolicies :: Generic ScalingPolicies _
instance showScalingPolicies :: Show ScalingPolicies where
  show = genericShow
instance decodeScalingPolicies :: Decode ScalingPolicies where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPolicies :: Encode ScalingPolicies where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a scaling policy.</p>
newtype ScalingPolicy = ScalingPolicy 
  { "PolicyName" :: (PolicyName)
  , "PolicyType" :: (PolicyType)
  , "TargetTrackingConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingConfiguration)
  }
derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
derive instance repGenericScalingPolicy :: Generic ScalingPolicy _
instance showScalingPolicy :: Show ScalingPolicy where
  show = genericShow
instance decodeScalingPolicy :: Decode ScalingPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingPolicy :: Encode ScalingPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingPolicy from required parameters
newScalingPolicy :: PolicyName -> PolicyType -> ScalingPolicy
newScalingPolicy _PolicyName _PolicyType = ScalingPolicy { "PolicyName": _PolicyName, "PolicyType": _PolicyType, "TargetTrackingConfiguration": (NullOrUndefined Nothing) }

-- | Constructs ScalingPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPolicy' :: PolicyName -> PolicyType -> ( { "PolicyName" :: (PolicyName) , "PolicyType" :: (PolicyType) , "TargetTrackingConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingConfiguration) } -> {"PolicyName" :: (PolicyName) , "PolicyType" :: (PolicyType) , "TargetTrackingConfiguration" :: NullOrUndefined.NullOrUndefined (TargetTrackingConfiguration) } ) -> ScalingPolicy
newScalingPolicy' _PolicyName _PolicyType customize = (ScalingPolicy <<< customize) { "PolicyName": _PolicyName, "PolicyType": _PolicyType, "TargetTrackingConfiguration": (NullOrUndefined Nothing) }



newtype ScalingStatusCode = ScalingStatusCode String
derive instance newtypeScalingStatusCode :: Newtype ScalingStatusCode _
derive instance repGenericScalingStatusCode :: Generic ScalingStatusCode _
instance showScalingStatusCode :: Show ScalingStatusCode where
  show = genericShow
instance decodeScalingStatusCode :: Decode ScalingStatusCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingStatusCode :: Encode ScalingStatusCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceNamespace = ServiceNamespace String
derive instance newtypeServiceNamespace :: Newtype ServiceNamespace _
derive instance repGenericServiceNamespace :: Generic ServiceNamespace _
instance showServiceNamespace :: Show ServiceNamespace where
  show = genericShow
instance decodeServiceNamespace :: Decode ServiceNamespace where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceNamespace :: Encode ServiceNamespace where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a target tracking scaling policy.</p>
newtype TargetTrackingConfiguration = TargetTrackingConfiguration 
  { "PredefinedScalingMetricSpecification" :: NullOrUndefined.NullOrUndefined (PredefinedScalingMetricSpecification)
  , "CustomizedScalingMetricSpecification" :: NullOrUndefined.NullOrUndefined (CustomizedScalingMetricSpecification)
  , "TargetValue" :: (MetricScale)
  , "DisableScaleIn" :: NullOrUndefined.NullOrUndefined (DisableScaleIn)
  , "ScaleOutCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown)
  , "ScaleInCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown)
  , "EstimatedInstanceWarmup" :: NullOrUndefined.NullOrUndefined (Cooldown)
  }
derive instance newtypeTargetTrackingConfiguration :: Newtype TargetTrackingConfiguration _
derive instance repGenericTargetTrackingConfiguration :: Generic TargetTrackingConfiguration _
instance showTargetTrackingConfiguration :: Show TargetTrackingConfiguration where
  show = genericShow
instance decodeTargetTrackingConfiguration :: Decode TargetTrackingConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTargetTrackingConfiguration :: Encode TargetTrackingConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TargetTrackingConfiguration from required parameters
newTargetTrackingConfiguration :: MetricScale -> TargetTrackingConfiguration
newTargetTrackingConfiguration _TargetValue = TargetTrackingConfiguration { "TargetValue": _TargetValue, "CustomizedScalingMetricSpecification": (NullOrUndefined Nothing), "DisableScaleIn": (NullOrUndefined Nothing), "EstimatedInstanceWarmup": (NullOrUndefined Nothing), "PredefinedScalingMetricSpecification": (NullOrUndefined Nothing), "ScaleInCooldown": (NullOrUndefined Nothing), "ScaleOutCooldown": (NullOrUndefined Nothing) }

-- | Constructs TargetTrackingConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetTrackingConfiguration' :: MetricScale -> ( { "PredefinedScalingMetricSpecification" :: NullOrUndefined.NullOrUndefined (PredefinedScalingMetricSpecification) , "CustomizedScalingMetricSpecification" :: NullOrUndefined.NullOrUndefined (CustomizedScalingMetricSpecification) , "TargetValue" :: (MetricScale) , "DisableScaleIn" :: NullOrUndefined.NullOrUndefined (DisableScaleIn) , "ScaleOutCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "ScaleInCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "EstimatedInstanceWarmup" :: NullOrUndefined.NullOrUndefined (Cooldown) } -> {"PredefinedScalingMetricSpecification" :: NullOrUndefined.NullOrUndefined (PredefinedScalingMetricSpecification) , "CustomizedScalingMetricSpecification" :: NullOrUndefined.NullOrUndefined (CustomizedScalingMetricSpecification) , "TargetValue" :: (MetricScale) , "DisableScaleIn" :: NullOrUndefined.NullOrUndefined (DisableScaleIn) , "ScaleOutCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "ScaleInCooldown" :: NullOrUndefined.NullOrUndefined (Cooldown) , "EstimatedInstanceWarmup" :: NullOrUndefined.NullOrUndefined (Cooldown) } ) -> TargetTrackingConfiguration
newTargetTrackingConfiguration' _TargetValue customize = (TargetTrackingConfiguration <<< customize) { "TargetValue": _TargetValue, "CustomizedScalingMetricSpecification": (NullOrUndefined Nothing), "DisableScaleIn": (NullOrUndefined Nothing), "EstimatedInstanceWarmup": (NullOrUndefined Nothing), "PredefinedScalingMetricSpecification": (NullOrUndefined Nothing), "ScaleInCooldown": (NullOrUndefined Nothing), "ScaleOutCooldown": (NullOrUndefined Nothing) }



newtype TargetTrackingConfigurations = TargetTrackingConfigurations (Array TargetTrackingConfiguration)
derive instance newtypeTargetTrackingConfigurations :: Newtype TargetTrackingConfigurations _
derive instance repGenericTargetTrackingConfigurations :: Generic TargetTrackingConfigurations _
instance showTargetTrackingConfigurations :: Show TargetTrackingConfigurations where
  show = genericShow
instance decodeTargetTrackingConfigurations :: Decode TargetTrackingConfigurations where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTargetTrackingConfigurations :: Encode TargetTrackingConfigurations where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TimestampType = TimestampType Types.Timestamp
derive instance newtypeTimestampType :: Newtype TimestampType _
derive instance repGenericTimestampType :: Generic TimestampType _
instance showTimestampType :: Show TimestampType where
  show = genericShow
instance decodeTimestampType :: Decode TimestampType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTimestampType :: Encode TimestampType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An exception was thrown for a validation issue. Review the parameters provided.</p>
newtype ValidationException = ValidationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where
  show = genericShow
instance decodeValidationException :: Decode ValidationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeValidationException :: Encode ValidationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ValidationException from required parameters
newValidationException :: ValidationException
newValidationException  = ValidationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ValidationException
newValidationException'  customize = (ValidationException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype XmlString = XmlString String
derive instance newtypeXmlString :: Newtype XmlString _
derive instance repGenericXmlString :: Generic XmlString _
instance showXmlString :: Show XmlString where
  show = genericShow
instance decodeXmlString :: Decode XmlString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeXmlString :: Encode XmlString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

