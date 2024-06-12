 
provider "aws" {
  region = "us-east-1"
  profile = "Devops_aniket"

}
resource "aws_iam_user" "demo" {
  name = "mahesh"
}

resource "aws_iam_user" "demo2" {
  name = "anil"
}

resource "aws_iam_group" "grp" {
  name = "pune"
}

resource "aws_iam_user_group_membership" "demo" {
   user = aws_iam_user.demo.name

   groups = [
          aws_iam_group.grp.name
         ]
}


resource "aws_iam_user_group_membership" "demo2" {
   user = aws_iam_user.demo2.name

   groups = [
          aws_iam_group.grp.name
         ]
}
