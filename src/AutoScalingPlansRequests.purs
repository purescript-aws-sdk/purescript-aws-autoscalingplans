
module AWS.AutoScalingPlans.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.AutoScalingPlans as AutoScalingPlans
import AWS.AutoScalingPlans.Types as AutoScalingPlansTypes


-- | <p>Creates a scaling plan.</p> <p>A scaling plan contains a set of instructions used to configure dynamic scaling for the scalable resources in your application. AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions in your scaling plan.</p>
createScalingPlan :: forall eff. AutoScalingPlans.Service -> AutoScalingPlansTypes.CreateScalingPlanRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingPlansTypes.CreateScalingPlanResponse
createScalingPlan (AutoScalingPlans.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createScalingPlan"


-- | <p>Deletes the specified scaling plan.</p>
deleteScalingPlan :: forall eff. AutoScalingPlans.Service -> AutoScalingPlansTypes.DeleteScalingPlanRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingPlansTypes.DeleteScalingPlanResponse
deleteScalingPlan (AutoScalingPlans.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteScalingPlan"


-- | <p>Describes the scalable resources in the specified scaling plan.</p>
describeScalingPlanResources :: forall eff. AutoScalingPlans.Service -> AutoScalingPlansTypes.DescribeScalingPlanResourcesRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingPlansTypes.DescribeScalingPlanResourcesResponse
describeScalingPlanResources (AutoScalingPlans.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeScalingPlanResources"


-- | <p>Describes the specified scaling plans or all of your scaling plans.</p>
describeScalingPlans :: forall eff. AutoScalingPlans.Service -> AutoScalingPlansTypes.DescribeScalingPlansRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingPlansTypes.DescribeScalingPlansResponse
describeScalingPlans (AutoScalingPlans.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeScalingPlans"
