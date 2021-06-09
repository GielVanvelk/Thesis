#include "mytask-component.hpp"
#include <rtt/Component.hpp>
#include <iostream>

#include <iomanip>
#include <stdio.h>
#include <cmath>
#include <vector>

using namespace RTT;
using namespace Eigen;

namespace mytask
{

Mytask::Mytask(std::string const& name) : TaskContext(name, PreOperational) // demand configure() call.
{
  // Add ports. (addEventPort() for a port that wakes up the activity)
  addPort( "in_force_data",     in_force_data_).doc( "The force data from the force sensor" );

  addPort( "out_force_too_low",             out_force_too_low_ ).doc( "Message that the applied force needs to be increased." );
  addPort( "out_force_too_high",            out_force_too_high_ ).doc( "Message that the applied force needs to be decreased." );

  // Message if completed
  std::cout << "Mytask constructed !" <<std::endl;
}

/**
 * This function is for the configuration code.
 * Return false to abort configuration.
 */
bool Mytask::configureHook(){
  return this->setPeriod(0.001); // set to 1000Hz execution mode.

  // Message if completed
  std::cout << "Mytask configured !" <<std::endl;
  return true;
}

/**
 * This function is for the application's start up code.
 * Return false to abort start up.
 */
bool Mytask::startHook(){

  // Message if started
  std::cout << "Mytask started !" <<std::endl;

  // Set output ports.
  out_force_too_low_.write(false);
  out_calibration_status_.write(false);

  // Reset input ports.
  in_force_data_.clear();

  return true;
}

/**
 * This function is called by the Execution Engine.
 */
void Mytask::updateHook(){

  // Message if executing the updateHook
  std::cout << "Mytask executes updateHook !" <<std::endl;

  if (in_force_data_ > 6) {
    out_force_too_high_.write(true);
    out_force_too_low_.write(false);
  }
  else if (in_force_data_ < 3 ) {
    out_force_too_high_.write(false);
    out_force_too_low_.write(true);
  }
  else {
    out_force_too_high_.write(false);
    out_force_too_low_.write(false);
  }

}

/**
 * This function is called when the task is stopped.
 */
void Mytask::stopHook() {

  // Set output ports.
  out_force_too_low_.write(false);
  out_calibration_status_.write(false);

  // Message if completed
  std::cout << "Mytask executes stopping !" <<std::endl;
}

/**
 * This function is called when the task is being deconfigured.
 */
void Mytask::cleanupHook() {
  std::cout << "Mytask cleaning up !" <<std::endl;
}
} //end namespace

/*
* Create Component
 */
ORO_CREATE_COMPONENT(Mytask)
