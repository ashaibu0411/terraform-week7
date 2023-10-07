## route table

resource "aws_route_table" "rt1" {
    vpc_id = aws_vpc.vpc1.id 
    route  {
        cidr_block = "0.0.0.0/16"
        gateway_id = aws_internet_gateway.gtw1.id
    }
}
