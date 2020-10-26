/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/application.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/css/site.scss":
/*!**************************************!*\
  !*** ./app/javascript/css/site.scss ***!
  \**************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var api = __webpack_require__(/*! ../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
            var content = __webpack_require__(/*! !../../../node_modules/css-loader/dist/cjs.js??ref--7-1!../../../node_modules/postcss-loader/src??ref--7-2!../../../node_modules/sass-loader/dist/cjs.js??ref--7-3!./site.scss */ "./node_modules/css-loader/dist/cjs.js?!./node_modules/postcss-loader/src/index.js?!./node_modules/sass-loader/dist/cjs.js?!./app/javascript/css/site.scss");

            content = content.__esModule ? content.default : content;

            if (typeof content === 'string') {
              content = [[module.i, content, '']];
            }

var options = {};

options.insert = "head";
options.singleton = false;

var update = api(content, options);



module.exports = content.locals || {};

/***/ }),

/***/ "./app/javascript/images sync recursive ^\\.\\/.*$":
/*!*********************************************!*\
  !*** ./app/javascript/images sync ^\.\/.*$ ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./0283.JPG": "./app/javascript/images/0283.JPG",
	"./0294.JPG": "./app/javascript/images/0294.JPG",
	"./0295.JPG": "./app/javascript/images/0295.JPG",
	"./0512.JPG": "./app/javascript/images/0512.JPG",
	"./0513.JPG": "./app/javascript/images/0513.JPG",
	"./0514.JPG": "./app/javascript/images/0514.JPG",
	"./0515.JPG": "./app/javascript/images/0515.JPG",
	"./0516.JPG": "./app/javascript/images/0516.JPG",
	"./0517.JPG": "./app/javascript/images/0517.JPG",
	"./0518.JPG": "./app/javascript/images/0518.JPG",
	"./0519.JPG": "./app/javascript/images/0519.JPG",
	"./0520.JPG": "./app/javascript/images/0520.JPG",
	"./0521.JPG": "./app/javascript/images/0521.JPG",
	"./0522.JPG": "./app/javascript/images/0522.JPG",
	"./0523.JPG": "./app/javascript/images/0523.JPG",
	"./0524.JPG": "./app/javascript/images/0524.JPG",
	"./1": "./app/javascript/images/1.png",
	"./1.png": "./app/javascript/images/1.png",
	"./2": "./app/javascript/images/2.png",
	"./2.png": "./app/javascript/images/2.png",
	"./3": "./app/javascript/images/3.png",
	"./3.png": "./app/javascript/images/3.png",
	"./4": "./app/javascript/images/4.png",
	"./4.png": "./app/javascript/images/4.png",
	"./Request": "./app/javascript/images/Request.jpg",
	"./Request.jpg": "./app/javascript/images/Request.jpg",
	"./about": "./app/javascript/images/about.jpg",
	"./about-bg": "./app/javascript/images/about-bg.jpg",
	"./about-bg.jpg": "./app/javascript/images/about-bg.jpg",
	"./about.jpg": "./app/javascript/images/about.jpg",
	"./banner": "./app/javascript/images/banner.jpg",
	"./banner.jpg": "./app/javascript/images/banner.jpg",
	"./loading": "./app/javascript/images/loading.gif",
	"./loading.gif": "./app/javascript/images/loading.gif",
	"./logo": "./app/javascript/images/logo.jpg",
	"./logo.jpg": "./app/javascript/images/logo.jpg",
	"./search_icon": "./app/javascript/images/search_icon.png",
	"./search_icon.png": "./app/javascript/images/search_icon.png",
	"./top-icon": "./app/javascript/images/top-icon.png",
	"./top-icon.png": "./app/javascript/images/top-icon.png"
};


function webpackContext(req) {
	var id = webpackContextResolve(req);
	return __webpack_require__(id);
}
function webpackContextResolve(req) {
	if(!__webpack_require__.o(map, req)) {
		var e = new Error("Cannot find module '" + req + "'");
		e.code = 'MODULE_NOT_FOUND';
		throw e;
	}
	return map[req];
}
webpackContext.keys = function webpackContextKeys() {
	return Object.keys(map);
};
webpackContext.resolve = webpackContextResolve;
module.exports = webpackContext;
webpackContext.id = "./app/javascript/images sync recursive ^\\.\\/.*$";

/***/ }),

/***/ "./app/javascript/images/0283.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0283.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0283-4b04b70a7f549b87ee7822d3d329044f.JPG";

/***/ }),

/***/ "./app/javascript/images/0294.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0294.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0294-3824ac83d506a5728a2c9f9b81dfbf41.JPG";

/***/ }),

/***/ "./app/javascript/images/0295.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0295.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0295-6de9c8c58347b8759a9ada44010846df.JPG";

/***/ }),

/***/ "./app/javascript/images/0512.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0512.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0512-86ee91534c0638a39f1bbb93c65ece69.JPG";

/***/ }),

/***/ "./app/javascript/images/0513.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0513.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0513-eded69cfa75b133a71d64d9349f87247.JPG";

/***/ }),

/***/ "./app/javascript/images/0514.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0514.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0514-d64e5855346118778216188bb33ab5f7.JPG";

/***/ }),

/***/ "./app/javascript/images/0515.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0515.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0515-acb5380e9cc03aaaa9e3953fed43d47f.JPG";

/***/ }),

/***/ "./app/javascript/images/0516.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0516.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0516-7fe01c16fa0439b734162d4b8f68e9cf.JPG";

/***/ }),

/***/ "./app/javascript/images/0517.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0517.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0517-911cfef97129349df7ee4ed3996efc5a.JPG";

/***/ }),

/***/ "./app/javascript/images/0518.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0518.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0518-60c1208cc021f35477c3b8fe791d17b6.JPG";

/***/ }),

/***/ "./app/javascript/images/0519.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0519.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0519-4ccdc0a9ab1161d4c9f7be92d20a7535.JPG";

/***/ }),

/***/ "./app/javascript/images/0520.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0520.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0520-695f37de5b58e0a70dfc9e1fdd998a8f.JPG";

/***/ }),

/***/ "./app/javascript/images/0521.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0521.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0521-a3a05cfc2a5a31ac5f76ae02fe7f9103.JPG";

/***/ }),

/***/ "./app/javascript/images/0522.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0522.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0522-75659a186969987998e86121df10fd55.JPG";

/***/ }),

/***/ "./app/javascript/images/0523.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0523.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0523-8fc9074f9b798f23abebcc643f6c85d5.JPG";

/***/ }),

/***/ "./app/javascript/images/0524.JPG":
/*!****************************************!*\
  !*** ./app/javascript/images/0524.JPG ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/0524-f146420c4453897c0693ece9e2f5616b.JPG";

/***/ }),

/***/ "./app/javascript/images/1.png":
/*!*************************************!*\
  !*** ./app/javascript/images/1.png ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/1-a1945aa2e11222ef3702c9f51bd40045.png";

/***/ }),

/***/ "./app/javascript/images/2.png":
/*!*************************************!*\
  !*** ./app/javascript/images/2.png ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/2-1a78a2eedae1d0e52a60d24bb3885315.png";

/***/ }),

/***/ "./app/javascript/images/3.png":
/*!*************************************!*\
  !*** ./app/javascript/images/3.png ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/3-6b1e12f8968eb3dd0426230a1a53d324.png";

/***/ }),

/***/ "./app/javascript/images/4.png":
/*!*************************************!*\
  !*** ./app/javascript/images/4.png ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/4-949f47386d53508e6ab9be3624d63fcc.png";

/***/ }),

/***/ "./app/javascript/images/Request.jpg":
/*!*******************************************!*\
  !*** ./app/javascript/images/Request.jpg ***!
  \*******************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/Request-4c5e5c54491e2a87ef8ed5247132814f.jpg";

/***/ }),

/***/ "./app/javascript/images/about-bg.jpg":
/*!********************************************!*\
  !*** ./app/javascript/images/about-bg.jpg ***!
  \********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/about-bg-8a69fd881d7d0207396999b92b13a6f7.jpg";

/***/ }),

/***/ "./app/javascript/images/about.jpg":
/*!*****************************************!*\
  !*** ./app/javascript/images/about.jpg ***!
  \*****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/about-a8c486f81299130333f64d9b165d199a.jpg";

/***/ }),

/***/ "./app/javascript/images/banner.jpg":
/*!******************************************!*\
  !*** ./app/javascript/images/banner.jpg ***!
  \******************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/banner-b7e0a757e2bc4d863b14440420365ad4.jpg";

/***/ }),

/***/ "./app/javascript/images/loading.gif":
/*!*******************************************!*\
  !*** ./app/javascript/images/loading.gif ***!
  \*******************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/loading-556e9ff845b7dd0c62dcdbbb00babb4b.gif";

/***/ }),

/***/ "./app/javascript/images/logo.jpg":
/*!****************************************!*\
  !*** ./app/javascript/images/logo.jpg ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/logo-2bc0d724f39d30f85c0ff5356de19db6.jpg";

/***/ }),

/***/ "./app/javascript/images/search_icon.png":
/*!***********************************************!*\
  !*** ./app/javascript/images/search_icon.png ***!
  \***********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/search_icon-9ddfcdc528c28b3756b2bed9d9eb8639.png";

/***/ }),

/***/ "./app/javascript/images/top-icon.png":
/*!********************************************!*\
  !*** ./app/javascript/images/top-icon.png ***!
  \********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "media/images/top-icon-901ddd1434be0d535fbe959d854d6966.png";

/***/ }),

/***/ "./app/javascript/packs/application.js":
/*!*********************************************!*\
  !*** ./app/javascript/packs/application.js ***!
  \*********************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var css_site_scss__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! css/site.scss */ "./app/javascript/css/site.scss");
/* harmony import */ var css_site_scss__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(css_site_scss__WEBPACK_IMPORTED_MODULE_0__);
/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// window.jQuery = window.$ = require('jquery')
// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")
// require("jquery.min")
// require("popper.min")
// require("custom")
// require("jquery-3.0.0.min")
// require("jquery.mCustomScrollbar.concat.min")
// require("jquery.validate")
// require("plugin")
// require("bootstrap.bundle.min")
__webpack_require__("./app/javascript/images sync recursive ^\\.\\/.*$"); // console.log('Hello World from Webpacker')




/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js?!./node_modules/postcss-loader/src/index.js?!./node_modules/sass-loader/dist/cjs.js?!./app/javascript/css/site.scss":
/*!***********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js??ref--7-1!./node_modules/postcss-loader/src??ref--7-2!./node_modules/sass-loader/dist/cjs.js??ref--7-3!./app/javascript/css/site.scss ***!
  \***********************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/sass-loader/dist/cjs.js):\n\nimport 'stylesheets/animate.min'\n     ^\n      Invalid CSS after \"import\": expected selector, was \"'stylesheets/animat\"\n      in /home/ec2-user/environment/RIKKA_Beauty/Code/app/javascript/css/site.scss (line 1, column 7)");

/***/ }),

/***/ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js":
/*!****************************************************************************!*\
  !*** ./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js ***!
  \****************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var isOldIE = function isOldIE() {
  var memo;
  return function memorize() {
    if (typeof memo === 'undefined') {
      // Test for IE <= 9 as proposed by Browserhacks
      // @see http://browserhacks.com/#hack-e71d8692f65334173fee715c222cb805
      // Tests for existence of standard globals is to allow style-loader
      // to operate correctly into non-standard environments
      // @see https://github.com/webpack-contrib/style-loader/issues/177
      memo = Boolean(window && document && document.all && !window.atob);
    }

    return memo;
  };
}();

var getTarget = function getTarget() {
  var memo = {};
  return function memorize(target) {
    if (typeof memo[target] === 'undefined') {
      var styleTarget = document.querySelector(target); // Special case to return head of iframe instead of iframe itself

      if (window.HTMLIFrameElement && styleTarget instanceof window.HTMLIFrameElement) {
        try {
          // This will throw an exception if access to iframe is blocked
          // due to cross-origin restrictions
          styleTarget = styleTarget.contentDocument.head;
        } catch (e) {
          // istanbul ignore next
          styleTarget = null;
        }
      }

      memo[target] = styleTarget;
    }

    return memo[target];
  };
}();

var stylesInDom = [];

function getIndexByIdentifier(identifier) {
  var result = -1;

  for (var i = 0; i < stylesInDom.length; i++) {
    if (stylesInDom[i].identifier === identifier) {
      result = i;
      break;
    }
  }

  return result;
}

function modulesToDom(list, options) {
  var idCountMap = {};
  var identifiers = [];

  for (var i = 0; i < list.length; i++) {
    var item = list[i];
    var id = options.base ? item[0] + options.base : item[0];
    var count = idCountMap[id] || 0;
    var identifier = "".concat(id, " ").concat(count);
    idCountMap[id] = count + 1;
    var index = getIndexByIdentifier(identifier);
    var obj = {
      css: item[1],
      media: item[2],
      sourceMap: item[3]
    };

    if (index !== -1) {
      stylesInDom[index].references++;
      stylesInDom[index].updater(obj);
    } else {
      stylesInDom.push({
        identifier: identifier,
        updater: addStyle(obj, options),
        references: 1
      });
    }

    identifiers.push(identifier);
  }

  return identifiers;
}

function insertStyleElement(options) {
  var style = document.createElement('style');
  var attributes = options.attributes || {};

  if (typeof attributes.nonce === 'undefined') {
    var nonce =  true ? __webpack_require__.nc : undefined;

    if (nonce) {
      attributes.nonce = nonce;
    }
  }

  Object.keys(attributes).forEach(function (key) {
    style.setAttribute(key, attributes[key]);
  });

  if (typeof options.insert === 'function') {
    options.insert(style);
  } else {
    var target = getTarget(options.insert || 'head');

    if (!target) {
      throw new Error("Couldn't find a style target. This probably means that the value for the 'insert' parameter is invalid.");
    }

    target.appendChild(style);
  }

  return style;
}

function removeStyleElement(style) {
  // istanbul ignore if
  if (style.parentNode === null) {
    return false;
  }

  style.parentNode.removeChild(style);
}
/* istanbul ignore next  */


var replaceText = function replaceText() {
  var textStore = [];
  return function replace(index, replacement) {
    textStore[index] = replacement;
    return textStore.filter(Boolean).join('\n');
  };
}();

function applyToSingletonTag(style, index, remove, obj) {
  var css = remove ? '' : obj.media ? "@media ".concat(obj.media, " {").concat(obj.css, "}") : obj.css; // For old IE

  /* istanbul ignore if  */

  if (style.styleSheet) {
    style.styleSheet.cssText = replaceText(index, css);
  } else {
    var cssNode = document.createTextNode(css);
    var childNodes = style.childNodes;

    if (childNodes[index]) {
      style.removeChild(childNodes[index]);
    }

    if (childNodes.length) {
      style.insertBefore(cssNode, childNodes[index]);
    } else {
      style.appendChild(cssNode);
    }
  }
}

function applyToTag(style, options, obj) {
  var css = obj.css;
  var media = obj.media;
  var sourceMap = obj.sourceMap;

  if (media) {
    style.setAttribute('media', media);
  } else {
    style.removeAttribute('media');
  }

  if (sourceMap && typeof btoa !== 'undefined') {
    css += "\n/*# sourceMappingURL=data:application/json;base64,".concat(btoa(unescape(encodeURIComponent(JSON.stringify(sourceMap)))), " */");
  } // For old IE

  /* istanbul ignore if  */


  if (style.styleSheet) {
    style.styleSheet.cssText = css;
  } else {
    while (style.firstChild) {
      style.removeChild(style.firstChild);
    }

    style.appendChild(document.createTextNode(css));
  }
}

var singleton = null;
var singletonCounter = 0;

function addStyle(obj, options) {
  var style;
  var update;
  var remove;

  if (options.singleton) {
    var styleIndex = singletonCounter++;
    style = singleton || (singleton = insertStyleElement(options));
    update = applyToSingletonTag.bind(null, style, styleIndex, false);
    remove = applyToSingletonTag.bind(null, style, styleIndex, true);
  } else {
    style = insertStyleElement(options);
    update = applyToTag.bind(null, style, options);

    remove = function remove() {
      removeStyleElement(style);
    };
  }

  update(obj);
  return function updateStyle(newObj) {
    if (newObj) {
      if (newObj.css === obj.css && newObj.media === obj.media && newObj.sourceMap === obj.sourceMap) {
        return;
      }

      update(obj = newObj);
    } else {
      remove();
    }
  };
}

module.exports = function (list, options) {
  options = options || {}; // Force single-tag solution on IE6-9, which has a hard limit on the # of <style>
  // tags it will allow on a page

  if (!options.singleton && typeof options.singleton !== 'boolean') {
    options.singleton = isOldIE();
  }

  list = list || [];
  var lastIdentifiers = modulesToDom(list, options);
  return function update(newList) {
    newList = newList || [];

    if (Object.prototype.toString.call(newList) !== '[object Array]') {
      return;
    }

    for (var i = 0; i < lastIdentifiers.length; i++) {
      var identifier = lastIdentifiers[i];
      var index = getIndexByIdentifier(identifier);
      stylesInDom[index].references--;
    }

    var newLastIdentifiers = modulesToDom(newList, options);

    for (var _i = 0; _i < lastIdentifiers.length; _i++) {
      var _identifier = lastIdentifiers[_i];

      var _index = getIndexByIdentifier(_identifier);

      if (stylesInDom[_index].references === 0) {
        stylesInDom[_index].updater();

        stylesInDom.splice(_index, 1);
      }
    }

    lastIdentifiers = newLastIdentifiers;
  };
};

/***/ })

/******/ });
//# sourceMappingURL=application-2a5a0c83ec68c9fb6941.js.map