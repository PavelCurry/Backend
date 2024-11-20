resource "aws_iam_user" "iamuser" {
  name = "Pavel"
}

resource "aws_iam_group" "name" {
  name = "Manoir"
}

resource "aws_iam_group_membership" "name2" {
  name = "addinguser"
  group = aws_iam_group.name.name
  users = [aws_iam_user.iamuser.name]
}