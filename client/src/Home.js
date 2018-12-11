import React, { Component } from 'react'
import { Container, Header, Icon, Dimmer, Loader } from 'semantic-ui-react'

class Home extends Component {
    constructor() {
        super()
        this.state = {}
    }

    componentDidMount() {
    }

    fetch(endpoint) {
        return window.fetch(endpoint)
            .then(response => response.json())
            .catch(error => console.log(error))
    }

    render() {
        // Sample code; replace this with the thing you are trying to load. 
        // Otherwise a loading screen will appear
        return true
            ? <Container text>
                <Header as='h2' icon textAlign='center' color='teal'>
                    <Icon name='power off' circular />
                    <Header.Content>
                        Main Title
                    </Header.Content>
                </Header>
            </Container>
            : <Container text>
                <Dimmer active inverted>
                    <Loader content='Loading' />
                </Dimmer>
            </Container>
    }
}

export default Home