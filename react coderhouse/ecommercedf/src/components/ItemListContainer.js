import React from 'react'
import '../styles/ItemListContainer.css'
/* import ListGroup from 'react-bootstrap/ListGroup'; */


function ItemListContainer(prop) {
    return (
        <>
        <h3>{prop.greeting}</h3>
        <h3>{prop.greeting}</h3>
        <h3>{prop.greeting}</h3>
{/*             <ListGroup>
                <ListGroup.Item action variant="dark">
                    {prop.greeting}
                </ListGroup.Item>
                <ListGroup.Item action variant="dark">
                    {prop.greeting}
                </ListGroup.Item>
                <ListGroup.Item action variant="dark">
                    {prop.greeting}
                </ListGroup.Item>
            </ListGroup> */}
        </>
    )
}


export default ItemListContainer

