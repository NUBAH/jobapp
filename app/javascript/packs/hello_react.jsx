// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

class ScrollButton extends React.Component {
	constructor() {
		super();

		this.state = {
			intervalID: 0
		};
	}

	scrollStep() {
	    if (window.pageYOffset === 0) {
	        clearInterval(this.state.intervalId);
	    }
    }

    scrollToTop() {
    	window.scroll(0, 0);
    }

    render () {
        return <button title='Back to top' className='scroll' onClick={ () => { this.scrollToTop(); }}>
                	<span className='arrow-up glyphicon glyphicon-chevron-up'></span>
               </button>;
    }

}


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
  	<ScrollButton/>,
  	document.getElementById('app'),
  )
})

