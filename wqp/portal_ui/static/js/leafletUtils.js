/* jslint browser: true */

var WQP = WQP || {};
WQP.L = WQP.L || {};
WQP.L.Util = WQP.L.Util || {};

/*
 * @param {L.LatLngBounds} bounds
 * @returns a string representing bounds as south,west,north,east
 */
WQP.L.Util.toBBoxString = function(bounds) {
	"use strict";
	return bounds.getSouth() + ',' + bounds.getWest() + ',' + bounds.getNorth() + ',' + bounds.getEast();
};