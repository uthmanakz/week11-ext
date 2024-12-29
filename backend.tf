terraform {
    backend "s3" {
        bucket = "uthman-terraform-bucket"
        key = "playbook-proj/tf.tfstae"
        region = "eu-west-2"
    }
}