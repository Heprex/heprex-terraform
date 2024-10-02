resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }

    lifecycle { 
        ignore_changes = [tags]
    }
}

/*
this line is what you need to ignore some manual changes done

lifecycle { 
        ignore_changes = [tags]
*/