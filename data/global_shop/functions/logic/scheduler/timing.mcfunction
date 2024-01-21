schedule clear global_shop:logic/scheduler/10t
schedule clear global_shop:logic/scheduler/1s
schedule clear global_shop:logic/scheduler/1m

schedule function global_shop:logic/scheduler/10t 1t append
schedule function global_shop:logic/scheduler/1s 1t append
schedule function global_shop:logic/scheduler/1m 1t append