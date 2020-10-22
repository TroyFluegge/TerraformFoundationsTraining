/*  Arguments - Assigns a value to a particular name
    The identifier before the equals sign is the argument name, and the expression 
    after the equals sign is the argument's value. */

server_name = "test-server"


/*  Blocks - A container for other content
    The example below has a type of "resource".  Each block type has a determined
    number of labels that follow the type keyword. */

resource "aws_instance" "example" {
  ami = "ami-abc123"

  network_interface {
    # ...
  }
}



