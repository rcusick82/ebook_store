import React from "react"
import PropTypes from "prop-types"
import ReactTable from "react-table"
import 'react-table/react-table.css'

class HelloWorld extends React.Component {
  render() {
    return (<div>
      <ReactTable/>
    </div>);
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
