import Navbar from 'react-bootstrap/Navbar';
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import NavDropdown from 'react-bootstrap/NavDropdown';
import CartWidget from './CartWidget'

const NavBar = ()=>{
    return(
        <>
        <Navbar bg="light" expand="lg">
            <Container>
                <Navbar.Brand href="#home">Servicio Tecnico David F | Tienda |</Navbar.Brand>
                <Navbar.Toggle aria-controls="basic-navbar-nav" />
                <Navbar.Collapse id="basic-navbar-nav">
                <Nav className="me-auto">
                    <Nav.Link href="#home">Home</Nav.Link>
                    <Nav.Link href="#medios-de-pago">Medios de Pago</Nav.Link>
                    <NavDropdown title="Comprar->" id="basic-nav-dropdown">
                    <NavDropdown.Item href="#action/domesticas">Compus domesticas</NavDropdown.Item>
                    <NavDropdown.Item href="#action/oficina">Compus de oficina</NavDropdown.Item>
                    <NavDropdown.Item href="#action/juegos">Compus para juegos</NavDropdown.Item>
                    <NavDropdown.Divider />
                    <NavDropdown.Item href="#action/accesorios">Accesorios/Perifericos</NavDropdown.Item>
                    </NavDropdown>
                </Nav>
                
                </Navbar.Collapse>
                <CartWidget/>
            </Container>
            

        </Navbar>
        
        </>
    )
};

export default NavBar;