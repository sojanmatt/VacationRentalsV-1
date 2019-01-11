import React, { Component } from "react";

import axios from "axios";
import moment from "moment";
import cookie from "react-cookies";
import { Redirect } from "react-router";
import Datepicker from "react-datepicker";
import Background from "./homeaway.jpg";
import Navbar from "./Navbar";
import "react-datepicker/dist/react-datepicker.css";

const Home = props => {
  let redirectVar = null;
  let navbar = <Navbar />;
  if (cookie.load("cookieOwner")) {
    redirectVar = <Redirect to="/ownerDashboard" />;
  } else if (!cookie.load("cookie") && !cookie.load("cookieOwner")) {
    redirectVar = <Redirect to="/login" />;
  } else {
    if (props.isSearch) {
      redirectVar = <Redirect to="/property-list" />;
    }
  }

  return (
    <div>
      {redirectVar}

      <div className="">
        {navbar}
        <div
          className="property-details clearfix"
          style={{ backgroundImage: `url(${Background})` }}
        >
          <h1 className="headLine">
            <div className="HeadLine__text">Book beach houses, cabins,</div>
            <div className="HeadLine__text">condos and more, worldwide</div>
          </h1>
          <div className="form-group col-md-12">
            <div className="form-group col-md-4">
              <input
                onChange={props.change}
                type="text"
                className="form-control"
                name="location"
                placeholder="Where do you want to go!"
              />
            </div>

            <span className="date-picker col-md-2">
              <input
                type="date"
                selected={props.fromDate}
                onChange={date => props.handleDateChange("fromDate", date)}
                name="fromDate"
                required
              />
            </span>
            <span className="date-picker col-md-2">
              <input
                type="date"
                selected={props.toDate}
                onChange={date => props.handleDateChange("toDate", date)}
                name="toDate"
                required
              />
            </span>
            <div className="form-group col-md-1">
              <input
                onChange={props.change}
                type="text"
                className="form-control"
                name="adults"
                placeholder="Adults"
                //value={props.guests}
                required
              />
            </div>
            <div className="form-group col-md-1">
              <input
                onChange={props.change}
                type="text"
                className="form-control"
                name="kids"
                placeholder="kids"
                required
                //value={props.guests}
              />
            </div>
            <div className="form-group col-md-2">
              <button
                className="btn btn-primary btn-lg "
                data-effect="ripple"
                type="button"
                tabIndex="5"
                data-loading-animation="true"
                onClick={props.handleSearchSubmit}
              >
                Search
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

//export Home Component
export default Home;
