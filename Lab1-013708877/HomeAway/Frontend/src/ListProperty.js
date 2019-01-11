import React, { Component } from "react";
import Odometer from "react-odometerjs";
import "odometer/themes/odometer-theme-train-station.css";
import { Link } from "react-router-dom";
import { Redirect } from "react-router";
import Background from "./homeaway.jpg";
import cookie from "react-cookies";
import Location from "./Location";
class ListProperty extends Component {
  constructor(props) {
    super(props);
    this.changeTheRooms = props.changeRoom;
    this.state = {
      Bed: 3,
      Bath: 2
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  componentWillUnmount() {
    this.changeTheRooms(this.state.Bed, this.state.Bath);
  }
  //   componentDidMount() {
  //     this.setState({
  //       Bed: 3,
  //       Bath: 2
  //     });
  //   }
  handleDateChange = (name, date) => {
    console.log("name and date", name, date);
    if (name === "Bed") {
      this.setState({
        fromDate: date
      });
    }
    console.log("name date", date);
    if (name === "toDate") {
      this.setState({
        toDate: date
      });
    }

    //this.toggleCalendar();
  };

  IncrementItem = name => {
    console.log(name);
    console.log(this.state.Bath);
    if (name === "Bed") this.setState({ Bed: this.state.Bed + 1 });
    else if (name === "Bath") this.setState({ Bath: this.state.Bath + 1 });
  };
  DecrementItem = name => {
    if (name === "Bath") this.setState({ Bath: this.state.Bath - 1 });
    else if (name === "Bed") this.setState({ Bed: this.state.Bed - 1 });
  };

  handleChange(event) {
    const { name, value } = event.target;
    const { user } = this.state;
    this.setState({
      propDetails: {
        ...user,
        [name]: value
      },

      submitted: false
    });
  }
  handleSubmit(event) {
    event.preventDefault();
    const { propDetails } = this.state;
    console.log("propDetails", propDetails);
    alert("hi");
  }
  render() {
    let redirectVar = null;
    if (!cookie.load("cookieOwner")) {
      redirectVar = <Redirect to="/ownerLogin" />;
    }

    // <Location bed={this.state.propDetails.Bed} />;

    const { propDetails } = this.state;
    return (
      <div>
        {redirectVar}
        <div
          className="property-details clearfix"
          style={{ backgroundImage: `url(${Background})` }}
        >
          <div className="panel col-lg-6 col-sm-6 list-property-parent">
            <div className="headline variant-headline no-sleeps">
              Let's start with the basics
            </div>
            <div className="clearfix">
              <div className="col-lg-6 col-sm-6">
                <div className="odometer-input-label-text">Bedrooms</div>
                <div className="button-parent">
                  <button
                    className="glyphicon glyphicon-chevron-up"
                    onClick={e => this.IncrementItem("Bed")}
                  />
                </div>
                <Odometer format="d" duration={2} value={this.state.Bed} />
                <div className="button-parent">
                  <button
                    className="glyphicon glyphicon-chevron-down"
                    onClick={e => this.DecrementItem("Bed")}
                  />
                </div>
              </div>

              <div className="col-lg-6 col-sm-6">
                <div className="odometer-input-label-text">Bathrooms</div>
                <div className="button-parent">
                  <button
                    className="glyphicon glyphicon-chevron-up"
                    onClick={e => this.IncrementItem("Bath")}
                  />
                </div>
                <Odometer format="d" duration={5} value={this.state.Bath} />
                <div className="button-parent">
                  <button
                    className="glyphicon glyphicon-chevron-down"
                    onClick={e => this.DecrementItem("Bath")}
                  />
                </div>
              </div>
            </div>
            <div className="link-parent">
              <Link
                to="/Location"
                className="link btn btn-primary btn-md"
                data-wdio="nextButton"
                data-effect="ripple"
                // onClick={this.handleSubmit}
              >
                {/* <span className="ripple-container" aria-hidden="true">
                <span
                  className="ripple animate"
                  style={{ top: "-77.7969px", left: "-82.4688px" }}
                />
              </span> */}
                {/* <span className="continueButtonText">Next</span> */}
                Next
              </Link>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ListProperty;
