## Module AWS.AutoScalingPlans.Requests

#### `createScalingPlan`

``` purescript
createScalingPlan :: forall eff. Service -> CreateScalingPlanRequest -> Aff (exception :: EXCEPTION | eff) CreateScalingPlanResponse
```

<p>Creates a scaling plan.</p> <p>A scaling plan contains a set of instructions used to configure dynamic scaling for the scalable resources in your application. AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions in your scaling plan.</p>

#### `deleteScalingPlan`

``` purescript
deleteScalingPlan :: forall eff. Service -> DeleteScalingPlanRequest -> Aff (exception :: EXCEPTION | eff) DeleteScalingPlanResponse
```

<p>Deletes the specified scaling plan.</p>

#### `describeScalingPlanResources`

``` purescript
describeScalingPlanResources :: forall eff. Service -> DescribeScalingPlanResourcesRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalingPlanResourcesResponse
```

<p>Describes the scalable resources in the specified scaling plan.</p>

#### `describeScalingPlans`

``` purescript
describeScalingPlans :: forall eff. Service -> DescribeScalingPlansRequest -> Aff (exception :: EXCEPTION | eff) DescribeScalingPlansResponse
```

<p>Describes the specified scaling plans or all of your scaling plans.</p>


