resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [var.subnet1 , var.subnet2]

}
resource "aws_lb_target_group" "alb_tg" {
  name     = "ALB-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc
}

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.test.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_tg.arn
  }
}

resource "aws_lb_target_group_attachment" "alb_tg_attach_1" {
  target_group_arn = aws_lb_target_group.alb_tg.arn
  target_id        = var.target1
  port             = 80
}

resource "aws_lb_target_group_attachment" "alb_tg_attach_2" {
  target_group_arn = aws_lb_target_group.alb_tg.arn
  target_id        = var.target2
  port             = 80
}

