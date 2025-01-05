 module "alb" {
    source = "../modules/alb"
    vpc = data.terraform_remote_state.vpc.outputs.vpc_id 
    subnet1 = data.terraform_remote_state.vpc.outputs.pubsub_2a_id 
    subnet2 = data.terraform_remote_state.vpc.outputs.pubsub_2b_id
    target1 = module.nginx.instance_id_1
    target2 = module.nginx.instance_id_2
} 