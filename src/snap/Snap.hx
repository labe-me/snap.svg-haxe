/*
 * Extern file for Snap(http://snapsvg.io/), a JS vector graphic library.
 */

package snap;

import js.html.*;

// The Snap class maps to the Paper object defined in the snap api and extends SnapElement.

@:native("Snap")
extern class Snap extends SnapElement {
	public function new(?p0:Dynamic, ?p1:Dynamic);
	
	// Public static methods:
	static public function ajax(url:String, postData:Dynamic, callbackFunction:Dynamic, scope:Dynamic):Dynamic;  // XmlHttpRequest
	static public function angle(x1:Float, y1:Float, x2:Float, y2:Float, ?x3:Float, ?y3:Float):Float;
	static public function animation(params:Dynamic, ms:Float, easing:String, ?callbackFunction:Dynamic):Dynamic;
	static public function color(clr:String):SnapColor;
	static public function deg(rad:Float):Float;
	static public function format(token:String, json:Dynamic):String;
	static public function is(obj:Dynamic, type:String):Bool;
	static public function load(url:String, callbackFunction:SnapFragment->Void, ?scope:Dynamic):Void;
	static public function parse(svg:String):SnapFragment;
	static public function parsePathString(pathString:String):Array<Dynamic>;
	static public function parseTransformString(tString:String):Array<Dynamic>;
	static public function rad(deg:Float):Float;
	
	static public function snapTo(values:Array<Float>, value:Float, ?tolerance:Float):Float;

	// Element creation
	public function circle(x:Float, y:Float, r:Float):SnapElement;
	public function el(name:String, attr:Dynamic):SnapElement;
	public function ellipse(x:Float, y:Float, rx:Float, ry:Float):SnapElement;
	public function fragment(varargs:Dynamic):SnapFragment;
	inline public function group(self:Snap, elements:Array<Dynamic>):SnapElement {
		var e123 = elements;
		var me123 = self;
		return untyped __js__("me123.group.apply(me123, e123)");
	}
	public function gradient(gradientstr:String):SnapElement;
	public function image(src:String, x:Float, y:Float, width:Float, height:Float):SnapElement;
	public function line(x1:Float, y1:Float, x2:Float, y2:Float):SnapElement;
	public function filter(filstr:String):SnapElement;
	public function path(?pathString:String):SnapElement;
	public function polygon(?varargs:Array<Dynamic>):SnapElement;
	public function polyline(?varargs:Array<Dynamic>):SnapElement;
	public function rect(x:Float, y:Float, width:Float, height:Float, ?rx:Float, ?ry:Float):SnapElement;
	public function text(x:Float, y:Float, text:Dynamic):SnapElement;

	static public function getRGB(color:String):SnapRGB;
	static public function getColor(?val:Float):String;
	inline static public function getColorReset():Void {
		untyped __js__("Snap.getColor.reset()");
	}
	
	static public function hsb(hue:Float, saturation:Float, brightness:Float):String;
	static public function hsb2rgb(hue:Float, saturation:Float, brightness:Float):SnapRGB;

	static public function hsl(hue:Float, saturation:Float, lightness:Float):String;
	static public function hsl2rgb(hue:Float, saturation:Float, lightness:Float):SnapRGB;

	static public function rgb(red:Float, green:Float, blue:Float):String;
	static public function rgb2hsb(red:Float, green:Float, blue:Float):SnapHSB;
	static public function rgb2hsl(red:Float, green:Float, blue:Float):SnapHSL;
}

@:native("Snap.path") extern class SnapPath {
	static public function bezierBBox(bez:Array<Float>):SnapBoundingBox;
	static public function findDotsAtSegment(p1x:Float, p1y:Float, c1x:Float, c1y:Float, c2x:Float, c2y:Float, p2x:Float, p2y:Float, t:Float): SnapPointInformation;
	static public function getBBox(path:String):Dynamic;
	static public function getPointAtLength(path:String, length:Float):Dynamic;
	static public function getSubpath(path:String, from:Float, to:Float):String;
	static public function getTotalLength(path:String):Float;
	static public function intersection(path1:String, path2:String): Array<Dynamic>;
	static public function isPointInsidePath(path:String, x:Float, y:Float):Bool;
	static public function isPointInsideBBox(bbox:String, x:Float, y:Float):Bool;
	static public function map(path:String, matrix:SnapMatrix):String;
	static public function toAbsolute(path:String):Array<Dynamic>;
	static public function toCubic(path:String):Array<Dynamic>;
	static public function toRelative(path:String):Array<Dynamic>;
}

@:native("Snap.filter") extern class SnapFilter {
	static public function blur(x:Float, ?y:Float): String;
	static public function brightness(amount:Float):String;
	static public function contrast(amount:Float):String;
	static public function grayscale(amount:Float):String;
	static public function hueRotate(angle:Float):String;
	static public function invert(amount:Float):String;
	static public function saturate(amount:Float):String;
	static public function sepia(amount:Float):String;
	static public function shadow(dx:Float, dy:Float, ?blur:Float, ?color:String):String;
}

@:native("Snap.Matrix")
extern class SnapMatrix {
	public function new(?a:Dynamic, ?b:Float, ?c:Float, ?d:Float, ?e:Float, ?f:Float);
	public function add(a:Dynamic, ?b:Float, ?c:Float, ?d:Float, ?e:Float, ?f:Float):Void;
	public function clone():SnapMatrix;
	public function invert():SnapMatrix;
	public function rotate(a:Float, x:Float, y:Float):SnapMatrix;
	public function scale(x:Float, ?y:Float, ?cx:Float, ?cy:Float):SnapMatrix;
	public function split():Dynamic;
	public function toTransformString():String;
	public function translate(x:Float, y:Float):SnapMatrix;
	public function x(x:Float, y:Float):Float;
	public function y(x:Float, y:Float):Float;
}

@:native("mina")
extern class SnapMina {
	public function new(a:Float, A:Float, b:Float, B:Float, get:Dynamic, set:Dynamic, easing:Dynamic);
	// TODO: generic animation descriptor
	// {
	// id string animation id,
	// start number start slave number,
	// end number end slave number,
	// b number start master number,
	// s number animation status (0..1),
	// dur number animation duration,
	// spd number animation speed,
	// get function getter of master number (see mina.time),
	// set function setter of slave number,
	// easing function easing function, default is mina.linear,
	// status function status getter/setter,
	// speed function speed getter/setter,
	// duration function duration getter/setter,
	// stop function animation stopper
	// pause function pauses the animation
	// resume function resumes the animation
	// update function calles setter with the right value of the animation
	
	public static function backin(n:Float):Float;
	public static function backout(n:Float):Float;
	public static function bounce(n:Float):Float;
	public static function easein(n:Float):Float;
	public static function easeinout(n:Float):Float;
	public static function easeout(n:Float):Float;
	public static function elastic(n:Float):Float;
	public static function getById(id:String):SnapMina;
	public static function linear(n:Float):Float;
	public static function time():Float;
}

extern class SnapFragment {
	public function select(q:String) : SnapElement;
	public function selectAll(q:String) : Array<SnapElement>;
}

extern class SnapElement {
	public function new();
	public function add(el:SnapElement):SnapElement;
	public function after(el:SnapElement):SnapElement;
	public function animate(newAttrs:Dynamic, duration:Float, ?easing:String, ?callbackFunction:Dynamic):SnapElement;
	public function append(el:SnapElement):SnapElement;
	public function asPX(attr:String, ?value:String):String;
	public function attr(?p0:Dynamic, ?p1:Dynamic):Dynamic;
	public function before(el:SnapElement):SnapElement;
	public function click(handler:Event->Void):SnapElement;
	public function clone():SnapElement;
	public function data(key:String, ?value :Dynamic):Dynamic;
	public function drag(?onmove:Event->Void, ?onstart:Event->Void, ?onend:Event->Void,
		                 ?mcontext:Dynamic, ?scontext:Dynamic, ?econtext:Dynamic):Void;
	public function dblclick(handler:Event->Void):SnapElement;
	public function getBBox(?isWithoutTransform:Bool): Dynamic;
	public function getPointAtLength(length:Float): {x:Float, y:Float, alpha:Float};
	public function getSubpath(from:Float, to:Float):String;
	public function getTotalLength():Float;
	public function hover(f_in:Event->Void, f_out:Event->Void, ?icontext:Dynamic, ?ocontext:Dynamic):SnapElement;
	public function inAnim():Dynamic;
	public function innerSVG():String;
	public function insertBefore(el:SnapElement):SnapElement;
	public function insertAfter(el:SnapElement):SnapElement;
	public function marker(x:Float, y:Float, width:Float, height:Float, refX:Float, refY:Float):Dynamic;
	public function mousedown(handler:Event->Void):SnapElement;
	public function mousemove(handler:Event->Void):SnapElement;
	public function mouseout(handler:Event->Void):SnapElement;
	public function mouseover(handler:Event->Void):SnapElement;
	public function mouseup(handler:Event->Void):SnapElement;
	public function parent():SnapElement;
	public function pattern(x:Float, y:Float, width:Float, height:Float):SnapElement;
	public function prepend(el:SnapElement):SnapElement;
	public function remove():SnapElement;
	public function removeData(?key:String):SnapElement;
	public function select(query:String):Dynamic;
	public function selectAll(query:String):SnapSet;
	public function stop():SnapElement;
	public function toDefs():SnapElement;
	public function toString():StringBuf;
	public function touchcancel(handler:Event->Void):SnapElement;
	public function touchend(handler:Event->Void):SnapElement;
	public function touchmove(handler:Event->Void):SnapElement;
	public function touchstart(handler:Event->Void):SnapElement;
	@:overload(function(m:SnapMatrix):SnapElement {})
	public function transform(tstr:String):SnapElement;
	public function unclick(handler:Event->Void):SnapElement;
	public function undblclick(handler:Event->Void):SnapElement;
	public function unhover(handler_in:Event->Void, handler_out:Event->Void):SnapElement;
	public function unmousedown(handler:Event->Void):SnapElement;
	public function unmousemove(handler:Event->Void):SnapElement;
	public function unmouseout(handler:Event->Void):SnapElement;
	public function unmouseover(handler:Event->Void):SnapElement;
	public function unmouseup(handler:Event->Void):SnapElement;
	public function untouchstart(handler:Event->Void):SnapElement;
	public function untouchmove(handler:Event->Void):SnapElement;
	public function untouchend(handler:Event->Void):SnapElement;
	public function untouchcancel(handler:Event->Void):SnapElement;
}

extern class SnapSet {
	public function clear():Void;
	public function exclude(el:SnapElement):Bool;
	public function forEach(callback:SnapElement->Void, thisArg:Dynamic):SnapSet;
	public function pop() : Null<SnapElement>;
	public function push(x:SnapElement) : SnapSet;
	public function splice(index:Float, count:Float, insertion:Dynamic):Dynamic;
}

typedef SnapRGB = {
	r:Float, 
	g:Float, 
	b:Float, 
	hex:String,
	error:Bool
}

typedef SnapHSB = {
	h:Float, 
	s:Float, 
	b:Float,
	toString:Void->String
}

typedef SnapHSL = {
	h:Float, 
	s:Float, 
	l:Float,
	toString:Void->String
}

typedef SnapColor = {
	r:Float, 
	g:Float, 
	b:Float, 
	hex:String,
	error:Bool,
	h:Float, 
	s:Float,
	v:Float,
	l:Float
}

typedef SnapBoundingBox = {
	x:Float,
	y:Float,
	x2:Float,
	y2:Float,
	width:Float,
	height:Float
}

typedef SnapCoordinates = {
	x:Float,
	y:Float
}

typedef SnapPointInformation = {
	x:Float,
	y:Float,
	m: SnapCoordinates,
	n: SnapCoordinates,
	start:SnapCoordinates,
	end:SnapCoordinates,
	alpha:Float
}
