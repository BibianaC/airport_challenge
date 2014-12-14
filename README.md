Airport Challenge
=================

Task
----
Write a software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally, it may be stormy, in which case no planes can land or take off. Every plane must have a status indicating whether it's flying or landed.


Class Airport
-------------

Responsibilites | Collaborators
--------------- | -------------
Traffic control | 
Receive planes  | Plane, weather
Release planes  | Plane, weather


Class Plane
-----------

Responsibilites |  Collaborators
--------------- | ----------------
Land            | Airport, weather
Take off        | Airport, weather