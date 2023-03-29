resource "aws_instance" "main" {
    ami = data.aws_ssm_parameter.instance_ami.value
    instance_type = "t3.micro"
    key_name = "willa-key"
    subnet_id = aws_subnet.public[0].id
    vpc_security_group_ids = ["sg-0b0f3c97a4c6b38e5"]
    tags = {
        "Name" = "${var.default_tags.env}-EC2"
    }

    user_data = base64encode(file("C:\\Users\\alexa\\OneDrive\\Desktop\\terraform\\user.sh"))

}