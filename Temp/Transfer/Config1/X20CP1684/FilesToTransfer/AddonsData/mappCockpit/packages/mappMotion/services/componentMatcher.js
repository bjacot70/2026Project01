var En = Object.defineProperty;
var hn = (r, e, n) => e in r ? En(r, e, { enumerable: !0, configurable: !0, writable: !0, value: n }) : r[e] = n;
var h = (r, e, n) => hn(r, typeof e != "symbol" ? e + "" : e, n);
var jr = /* @__PURE__ */ ((r) => (r.Commands = "MetaConfigCommands", r.ConfigProps = "MetaConfigConfigProps", r.DataPoints = "MetaConfigDatapoints", r.Info = "MetaConfigInfo", r.QuickCommands = "MetaConfigQuickCommands", r.Watchables = "MetaConfigWatchables", r.WatchablesStates = "MetaConfigWatchablesStates", r))(jr || {}), y = /* @__PURE__ */ ((r) => (r.UNKNOWN = "unknown", r.ERROR = "Error", r.ERROR_NOT_IMPLEMENTED = "not implemented", r.ERROR_TIMEOUT = "timeout Error", r.ERROR_FETS = "FeTs Error", r.ERROR_BAD_RESPONSE = "bad Response", r.ERROR_NOT_FOUND = "not found", r.ERROR_BAD_REQUEST = "bad Request", r.ERROR_PARAMETER = "bad Parameter", r.ERROR_NO_CONNECTION = "no active Connection", r.ERROR_NO_INSTANCE = "no Valid Instance", r.ERROR_BAD_CONNECTION_CLOSED = "BadConnectionClosed", r.PROCESSING = "already trying to, wait", r.OK = "OK", r))(y || {}), Yr = /* @__PURE__ */ ((r) => (r.RECONNECTING = "reconnecting", r))(Yr || {});
const Rn = ["Single Polling", "Multiple Polling", "Monitoring"];
function vn(r) {
  return Rn.includes(r);
}
async function On(r, e, n) {
  const t = {
    componentID: r,
    views: []
  };
  try {
    if (e) {
      const o = await e.readValue(
        r,
        jr.QuickCommands
      );
      if (o.Status !== y.OK) return;
      o.Value.QuickCommandsStructure.Scope === "mapp/Motion/Axis/AcpRealAxis" && t.views.push({
        viewID: "commissioning"
      });
    }
  } catch (o) {
    console.error(`Calling matchSingleComponent() '${r}' failed`, o);
  }
  n.matchedComponents.push(t);
}
function mn(r) {
  return {
    status: "OK",
    result: r
  };
}
function Sn(r) {
  return {
    status: "Failed",
    error: r
  };
}
var Nn = typeof globalThis < "u" ? globalThis : typeof window < "u" ? window : typeof global < "u" ? global : typeof self < "u" ? self : {};
function An(r) {
  if (r.__esModule) return r;
  var e = r.default;
  if (typeof e == "function") {
    var n = function t() {
      return this instanceof t ? Reflect.construct(e, arguments, this.constructor) : e.apply(this, arguments);
    };
    n.prototype = e.prototype;
  } else n = {};
  return Object.defineProperty(n, "__esModule", { value: !0 }), Object.keys(r).forEach(function(t) {
    var o = Object.getOwnPropertyDescriptor(r, t);
    Object.defineProperty(n, t, o.get ? o : {
      enumerable: !0,
      get: function() {
        return r[t];
      }
    });
  }), n;
}
var wn = Error, Tn = EvalError, In = RangeError, bn = ReferenceError, qr = SyntaxError, Se = TypeError, _n = URIError, $n = function() {
  if (typeof Symbol != "function" || typeof Object.getOwnPropertySymbols != "function")
    return !1;
  if (typeof Symbol.iterator == "symbol")
    return !0;
  var e = {}, n = Symbol("test"), t = Object(n);
  if (typeof n == "string" || Object.prototype.toString.call(n) !== "[object Symbol]" || Object.prototype.toString.call(t) !== "[object Symbol]")
    return !1;
  var o = 42;
  e[n] = o;
  for (n in e)
    return !1;
  if (typeof Object.keys == "function" && Object.keys(e).length !== 0 || typeof Object.getOwnPropertyNames == "function" && Object.getOwnPropertyNames(e).length !== 0)
    return !1;
  var i = Object.getOwnPropertySymbols(e);
  if (i.length !== 1 || i[0] !== n || !Object.prototype.propertyIsEnumerable.call(e, n))
    return !1;
  if (typeof Object.getOwnPropertyDescriptor == "function") {
    var a = Object.getOwnPropertyDescriptor(e, n);
    if (a.value !== o || a.enumerable !== !0)
      return !1;
  }
  return !0;
}, hr = typeof Symbol < "u" && Symbol, Dn = $n, Pn = function() {
  return typeof hr != "function" || typeof Symbol != "function" || typeof hr("foo") != "symbol" || typeof Symbol("bar") != "symbol" ? !1 : Dn();
}, Le = {
  __proto__: null,
  foo: {}
}, Cn = Object, Fn = function() {
  return { __proto__: Le }.foo === Le.foo && !(Le instanceof Cn);
}, Mn = "Function.prototype.bind called on incompatible ", Un = Object.prototype.toString, xn = Math.max, Ln = "[object Function]", Rr = function(e, n) {
  for (var t = [], o = 0; o < e.length; o += 1)
    t[o] = e[o];
  for (var i = 0; i < n.length; i += 1)
    t[i + e.length] = n[i];
  return t;
}, Bn = function(e, n) {
  for (var t = [], o = n, i = 0; o < e.length; o += 1, i += 1)
    t[i] = e[o];
  return t;
}, Vn = function(r, e) {
  for (var n = "", t = 0; t < r.length; t += 1)
    n += r[t], t + 1 < r.length && (n += e);
  return n;
}, Wn = function(e) {
  var n = this;
  if (typeof n != "function" || Un.apply(n) !== Ln)
    throw new TypeError(Mn + n);
  for (var t = Bn(arguments, 1), o, i = function() {
    if (this instanceof o) {
      var f = n.apply(
        this,
        Rr(t, arguments)
      );
      return Object(f) === f ? f : this;
    }
    return n.apply(
      e,
      Rr(t, arguments)
    );
  }, a = xn(0, n.length - t.length), c = [], s = 0; s < a; s++)
    c[s] = "$" + s;
  if (o = Function("binder", "return function (" + Vn(c, ",") + "){ return binder.apply(this,arguments); }")(i), n.prototype) {
    var l = function() {
    };
    l.prototype = n.prototype, o.prototype = new l(), l.prototype = null;
  }
  return o;
}, Gn = Wn, ar = Function.prototype.bind || Gn, Kn = Function.prototype.call, kn = Object.prototype.hasOwnProperty, Qn = ar, jn = Qn.call(Kn, kn), v, Yn = wn, qn = Tn, zn = In, Xn = bn, fe = qr, le = Se, Jn = _n, zr = Function, Be = function(r) {
  try {
    return zr('"use strict"; return (' + r + ").constructor;")();
  } catch {
  }
}, te = Object.getOwnPropertyDescriptor;
if (te)
  try {
    te({}, "");
  } catch {
    te = null;
  }
var Ve = function() {
  throw new le();
}, Zn = te ? function() {
  try {
    return arguments.callee, Ve;
  } catch {
    try {
      return te(arguments, "callee").get;
    } catch {
      return Ve;
    }
  }
}() : Ve, ae = Pn(), Hn = Fn(), D = Object.getPrototypeOf || (Hn ? function(r) {
  return r.__proto__;
} : null), ce = {}, et = typeof Uint8Array > "u" || !D ? v : D(Uint8Array), oe = {
  __proto__: null,
  "%AggregateError%": typeof AggregateError > "u" ? v : AggregateError,
  "%Array%": Array,
  "%ArrayBuffer%": typeof ArrayBuffer > "u" ? v : ArrayBuffer,
  "%ArrayIteratorPrototype%": ae && D ? D([][Symbol.iterator]()) : v,
  "%AsyncFromSyncIteratorPrototype%": v,
  "%AsyncFunction%": ce,
  "%AsyncGenerator%": ce,
  "%AsyncGeneratorFunction%": ce,
  "%AsyncIteratorPrototype%": ce,
  "%Atomics%": typeof Atomics > "u" ? v : Atomics,
  "%BigInt%": typeof BigInt > "u" ? v : BigInt,
  "%BigInt64Array%": typeof BigInt64Array > "u" ? v : BigInt64Array,
  "%BigUint64Array%": typeof BigUint64Array > "u" ? v : BigUint64Array,
  "%Boolean%": Boolean,
  "%DataView%": typeof DataView > "u" ? v : DataView,
  "%Date%": Date,
  "%decodeURI%": decodeURI,
  "%decodeURIComponent%": decodeURIComponent,
  "%encodeURI%": encodeURI,
  "%encodeURIComponent%": encodeURIComponent,
  "%Error%": Yn,
  "%eval%": eval,
  // eslint-disable-line no-eval
  "%EvalError%": qn,
  "%Float32Array%": typeof Float32Array > "u" ? v : Float32Array,
  "%Float64Array%": typeof Float64Array > "u" ? v : Float64Array,
  "%FinalizationRegistry%": typeof FinalizationRegistry > "u" ? v : FinalizationRegistry,
  "%Function%": zr,
  "%GeneratorFunction%": ce,
  "%Int8Array%": typeof Int8Array > "u" ? v : Int8Array,
  "%Int16Array%": typeof Int16Array > "u" ? v : Int16Array,
  "%Int32Array%": typeof Int32Array > "u" ? v : Int32Array,
  "%isFinite%": isFinite,
  "%isNaN%": isNaN,
  "%IteratorPrototype%": ae && D ? D(D([][Symbol.iterator]())) : v,
  "%JSON%": typeof JSON == "object" ? JSON : v,
  "%Map%": typeof Map > "u" ? v : Map,
  "%MapIteratorPrototype%": typeof Map > "u" || !ae || !D ? v : D((/* @__PURE__ */ new Map())[Symbol.iterator]()),
  "%Math%": Math,
  "%Number%": Number,
  "%Object%": Object,
  "%parseFloat%": parseFloat,
  "%parseInt%": parseInt,
  "%Promise%": typeof Promise > "u" ? v : Promise,
  "%Proxy%": typeof Proxy > "u" ? v : Proxy,
  "%RangeError%": zn,
  "%ReferenceError%": Xn,
  "%Reflect%": typeof Reflect > "u" ? v : Reflect,
  "%RegExp%": RegExp,
  "%Set%": typeof Set > "u" ? v : Set,
  "%SetIteratorPrototype%": typeof Set > "u" || !ae || !D ? v : D((/* @__PURE__ */ new Set())[Symbol.iterator]()),
  "%SharedArrayBuffer%": typeof SharedArrayBuffer > "u" ? v : SharedArrayBuffer,
  "%String%": String,
  "%StringIteratorPrototype%": ae && D ? D(""[Symbol.iterator]()) : v,
  "%Symbol%": ae ? Symbol : v,
  "%SyntaxError%": fe,
  "%ThrowTypeError%": Zn,
  "%TypedArray%": et,
  "%TypeError%": le,
  "%Uint8Array%": typeof Uint8Array > "u" ? v : Uint8Array,
  "%Uint8ClampedArray%": typeof Uint8ClampedArray > "u" ? v : Uint8ClampedArray,
  "%Uint16Array%": typeof Uint16Array > "u" ? v : Uint16Array,
  "%Uint32Array%": typeof Uint32Array > "u" ? v : Uint32Array,
  "%URIError%": Jn,
  "%WeakMap%": typeof WeakMap > "u" ? v : WeakMap,
  "%WeakRef%": typeof WeakRef > "u" ? v : WeakRef,
  "%WeakSet%": typeof WeakSet > "u" ? v : WeakSet
};
if (D)
  try {
    null.error;
  } catch (r) {
    var rt = D(D(r));
    oe["%Error.prototype%"] = rt;
  }
var nt = function r(e) {
  var n;
  if (e === "%AsyncFunction%")
    n = Be("async function () {}");
  else if (e === "%GeneratorFunction%")
    n = Be("function* () {}");
  else if (e === "%AsyncGeneratorFunction%")
    n = Be("async function* () {}");
  else if (e === "%AsyncGenerator%") {
    var t = r("%AsyncGeneratorFunction%");
    t && (n = t.prototype);
  } else if (e === "%AsyncIteratorPrototype%") {
    var o = r("%AsyncGenerator%");
    o && D && (n = D(o.prototype));
  }
  return oe[e] = n, n;
}, vr = {
  __proto__: null,
  "%ArrayBufferPrototype%": ["ArrayBuffer", "prototype"],
  "%ArrayPrototype%": ["Array", "prototype"],
  "%ArrayProto_entries%": ["Array", "prototype", "entries"],
  "%ArrayProto_forEach%": ["Array", "prototype", "forEach"],
  "%ArrayProto_keys%": ["Array", "prototype", "keys"],
  "%ArrayProto_values%": ["Array", "prototype", "values"],
  "%AsyncFunctionPrototype%": ["AsyncFunction", "prototype"],
  "%AsyncGenerator%": ["AsyncGeneratorFunction", "prototype"],
  "%AsyncGeneratorPrototype%": ["AsyncGeneratorFunction", "prototype", "prototype"],
  "%BooleanPrototype%": ["Boolean", "prototype"],
  "%DataViewPrototype%": ["DataView", "prototype"],
  "%DatePrototype%": ["Date", "prototype"],
  "%ErrorPrototype%": ["Error", "prototype"],
  "%EvalErrorPrototype%": ["EvalError", "prototype"],
  "%Float32ArrayPrototype%": ["Float32Array", "prototype"],
  "%Float64ArrayPrototype%": ["Float64Array", "prototype"],
  "%FunctionPrototype%": ["Function", "prototype"],
  "%Generator%": ["GeneratorFunction", "prototype"],
  "%GeneratorPrototype%": ["GeneratorFunction", "prototype", "prototype"],
  "%Int8ArrayPrototype%": ["Int8Array", "prototype"],
  "%Int16ArrayPrototype%": ["Int16Array", "prototype"],
  "%Int32ArrayPrototype%": ["Int32Array", "prototype"],
  "%JSONParse%": ["JSON", "parse"],
  "%JSONStringify%": ["JSON", "stringify"],
  "%MapPrototype%": ["Map", "prototype"],
  "%NumberPrototype%": ["Number", "prototype"],
  "%ObjectPrototype%": ["Object", "prototype"],
  "%ObjProto_toString%": ["Object", "prototype", "toString"],
  "%ObjProto_valueOf%": ["Object", "prototype", "valueOf"],
  "%PromisePrototype%": ["Promise", "prototype"],
  "%PromiseProto_then%": ["Promise", "prototype", "then"],
  "%Promise_all%": ["Promise", "all"],
  "%Promise_reject%": ["Promise", "reject"],
  "%Promise_resolve%": ["Promise", "resolve"],
  "%RangeErrorPrototype%": ["RangeError", "prototype"],
  "%ReferenceErrorPrototype%": ["ReferenceError", "prototype"],
  "%RegExpPrototype%": ["RegExp", "prototype"],
  "%SetPrototype%": ["Set", "prototype"],
  "%SharedArrayBufferPrototype%": ["SharedArrayBuffer", "prototype"],
  "%StringPrototype%": ["String", "prototype"],
  "%SymbolPrototype%": ["Symbol", "prototype"],
  "%SyntaxErrorPrototype%": ["SyntaxError", "prototype"],
  "%TypedArrayPrototype%": ["TypedArray", "prototype"],
  "%TypeErrorPrototype%": ["TypeError", "prototype"],
  "%Uint8ArrayPrototype%": ["Uint8Array", "prototype"],
  "%Uint8ClampedArrayPrototype%": ["Uint8ClampedArray", "prototype"],
  "%Uint16ArrayPrototype%": ["Uint16Array", "prototype"],
  "%Uint32ArrayPrototype%": ["Uint32Array", "prototype"],
  "%URIErrorPrototype%": ["URIError", "prototype"],
  "%WeakMapPrototype%": ["WeakMap", "prototype"],
  "%WeakSetPrototype%": ["WeakSet", "prototype"]
}, Ne = ar, De = jn, tt = Ne.call(Function.call, Array.prototype.concat), ot = Ne.call(Function.apply, Array.prototype.splice), Or = Ne.call(Function.call, String.prototype.replace), Pe = Ne.call(Function.call, String.prototype.slice), it = Ne.call(Function.call, RegExp.prototype.exec), at = /[^%.[\]]+|\[(?:(-?\d+(?:\.\d+)?)|(["'])((?:(?!\2)[^\\]|\\.)*?)\2)\]|(?=(?:\.|\[\])(?:\.|\[\]|%$))/g, st = /\\(\\)?/g, ct = function(e) {
  var n = Pe(e, 0, 1), t = Pe(e, -1);
  if (n === "%" && t !== "%")
    throw new fe("invalid intrinsic syntax, expected closing `%`");
  if (t === "%" && n !== "%")
    throw new fe("invalid intrinsic syntax, expected opening `%`");
  var o = [];
  return Or(e, at, function(i, a, c, s) {
    o[o.length] = c ? Or(s, st, "$1") : a || i;
  }), o;
}, lt = function(e, n) {
  var t = e, o;
  if (De(vr, t) && (o = vr[t], t = "%" + o[0] + "%"), De(oe, t)) {
    var i = oe[t];
    if (i === ce && (i = nt(t)), typeof i > "u" && !n)
      throw new le("intrinsic " + e + " exists, but is not available. Please file an issue!");
    return {
      alias: o,
      name: t,
      value: i
    };
  }
  throw new fe("intrinsic " + e + " does not exist!");
}, ye = function(e, n) {
  if (typeof e != "string" || e.length === 0)
    throw new le("intrinsic name must be a non-empty string");
  if (arguments.length > 1 && typeof n != "boolean")
    throw new le('"allowMissing" argument must be a boolean');
  if (it(/^%?[^%]*%?$/, e) === null)
    throw new fe("`%` may not be present anywhere but at the beginning and end of the intrinsic name");
  var t = ct(e), o = t.length > 0 ? t[0] : "", i = lt("%" + o + "%", n), a = i.name, c = i.value, s = !1, l = i.alias;
  l && (o = l[0], ot(t, tt([0, 1], l)));
  for (var f = 1, g = !0; f < t.length; f += 1) {
    var p = t[f], E = Pe(p, 0, 1), R = Pe(p, -1);
    if ((E === '"' || E === "'" || E === "`" || R === '"' || R === "'" || R === "`") && E !== R)
      throw new fe("property names with quotes must have matching quotes");
    if ((p === "constructor" || !g) && (s = !0), o += "." + p, a = "%" + o + "%", De(oe, a))
      c = oe[a];
    else if (c != null) {
      if (!(p in c)) {
        if (!n)
          throw new le("base intrinsic for " + e + " exists, but the property is not available.");
        return;
      }
      if (te && f + 1 >= t.length) {
        var N = te(c, p);
        g = !!N, g && "get" in N && !("originalValue" in N.get) ? c = N.get : c = c[p];
      } else
        g = De(c, p), c = c[p];
      g && !s && (oe[a] = c);
    }
  }
  return c;
}, Xr = { exports: {} }, We, mr;
function sr() {
  if (mr) return We;
  mr = 1;
  var r = ye, e = r("%Object.defineProperty%", !0) || !1;
  if (e)
    try {
      e({}, "a", { value: 1 });
    } catch {
      e = !1;
    }
  return We = e, We;
}
var ft = ye, _e = ft("%Object.getOwnPropertyDescriptor%", !0);
if (_e)
  try {
    _e([], "length");
  } catch {
    _e = null;
  }
var Jr = _e, Sr = sr(), ut = qr, se = Se, Nr = Jr, pt = function(e, n, t) {
  if (!e || typeof e != "object" && typeof e != "function")
    throw new se("`obj` must be an object or a function`");
  if (typeof n != "string" && typeof n != "symbol")
    throw new se("`property` must be a string or a symbol`");
  if (arguments.length > 3 && typeof arguments[3] != "boolean" && arguments[3] !== null)
    throw new se("`nonEnumerable`, if provided, must be a boolean or null");
  if (arguments.length > 4 && typeof arguments[4] != "boolean" && arguments[4] !== null)
    throw new se("`nonWritable`, if provided, must be a boolean or null");
  if (arguments.length > 5 && typeof arguments[5] != "boolean" && arguments[5] !== null)
    throw new se("`nonConfigurable`, if provided, must be a boolean or null");
  if (arguments.length > 6 && typeof arguments[6] != "boolean")
    throw new se("`loose`, if provided, must be a boolean");
  var o = arguments.length > 3 ? arguments[3] : null, i = arguments.length > 4 ? arguments[4] : null, a = arguments.length > 5 ? arguments[5] : null, c = arguments.length > 6 ? arguments[6] : !1, s = !!Nr && Nr(e, n);
  if (Sr)
    Sr(e, n, {
      configurable: a === null && s ? s.configurable : !a,
      enumerable: o === null && s ? s.enumerable : !o,
      value: t,
      writable: i === null && s ? s.writable : !i
    });
  else if (c || !o && !i && !a)
    e[n] = t;
  else
    throw new ut("This environment does not support defining a property as non-configurable, non-writable, or non-enumerable.");
}, He = sr(), Zr = function() {
  return !!He;
};
Zr.hasArrayLengthDefineBug = function() {
  if (!He)
    return null;
  try {
    return He([], "length", { value: 1 }).length !== 1;
  } catch {
    return !0;
  }
};
var yt = Zr, dt = ye, Ar = pt, gt = yt(), wr = Jr, Tr = Se, Et = dt("%Math.floor%"), ht = function(e, n) {
  if (typeof e != "function")
    throw new Tr("`fn` is not a function");
  if (typeof n != "number" || n < 0 || n > 4294967295 || Et(n) !== n)
    throw new Tr("`length` must be a positive 32-bit integer");
  var t = arguments.length > 2 && !!arguments[2], o = !0, i = !0;
  if ("length" in e && wr) {
    var a = wr(e, "length");
    a && !a.configurable && (o = !1), a && !a.writable && (i = !1);
  }
  return (o || i || !t) && (gt ? Ar(
    /** @type {Parameters<define>[0]} */
    e,
    "length",
    n,
    !0,
    !0
  ) : Ar(
    /** @type {Parameters<define>[0]} */
    e,
    "length",
    n
  )), e;
};
(function(r) {
  var e = ar, n = ye, t = ht, o = Se, i = n("%Function.prototype.apply%"), a = n("%Function.prototype.call%"), c = n("%Reflect.apply%", !0) || e.call(a, i), s = sr(), l = n("%Math.max%");
  r.exports = function(p) {
    if (typeof p != "function")
      throw new o("a function is required");
    var E = c(e, a, arguments);
    return t(
      E,
      1 + l(0, p.length - (arguments.length - 1)),
      !0
    );
  };
  var f = function() {
    return c(e, i, arguments);
  };
  s ? s(r.exports, "apply", { value: f }) : r.exports.apply = f;
})(Xr);
var Rt = Xr.exports, Hr = ye, en = Rt, vt = en(Hr("String.prototype.indexOf")), Ot = function(e, n) {
  var t = Hr(e, !!n);
  return typeof t == "function" && vt(e, ".prototype.") > -1 ? en(t) : t;
};
const mt = {}, St = /* @__PURE__ */ Object.freeze(/* @__PURE__ */ Object.defineProperty({
  __proto__: null,
  default: mt
}, Symbol.toStringTag, { value: "Module" })), Nt = /* @__PURE__ */ An(St);
var cr = typeof Map == "function" && Map.prototype, Ge = Object.getOwnPropertyDescriptor && cr ? Object.getOwnPropertyDescriptor(Map.prototype, "size") : null, Ce = cr && Ge && typeof Ge.get == "function" ? Ge.get : null, Ir = cr && Map.prototype.forEach, lr = typeof Set == "function" && Set.prototype, Ke = Object.getOwnPropertyDescriptor && lr ? Object.getOwnPropertyDescriptor(Set.prototype, "size") : null, Fe = lr && Ke && typeof Ke.get == "function" ? Ke.get : null, br = lr && Set.prototype.forEach, At = typeof WeakMap == "function" && WeakMap.prototype, ve = At ? WeakMap.prototype.has : null, wt = typeof WeakSet == "function" && WeakSet.prototype, Oe = wt ? WeakSet.prototype.has : null, Tt = typeof WeakRef == "function" && WeakRef.prototype, _r = Tt ? WeakRef.prototype.deref : null, It = Boolean.prototype.valueOf, bt = Object.prototype.toString, _t = Function.prototype.toString, $t = String.prototype.match, fr = String.prototype.slice, ee = String.prototype.replace, Dt = String.prototype.toUpperCase, $r = String.prototype.toLowerCase, rn = RegExp.prototype.test, Dr = Array.prototype.concat, j = Array.prototype.join, Pt = Array.prototype.slice, Pr = Math.floor, er = typeof BigInt == "function" ? BigInt.prototype.valueOf : null, ke = Object.getOwnPropertySymbols, rr = typeof Symbol == "function" && typeof Symbol.iterator == "symbol" ? Symbol.prototype.toString : null, ue = typeof Symbol == "function" && typeof Symbol.iterator == "object", C = typeof Symbol == "function" && Symbol.toStringTag && (typeof Symbol.toStringTag === ue || !0) ? Symbol.toStringTag : null, nn = Object.prototype.propertyIsEnumerable, Cr = (typeof Reflect == "function" ? Reflect.getPrototypeOf : Object.getPrototypeOf) || ([].__proto__ === Array.prototype ? function(r) {
  return r.__proto__;
} : null);
function Fr(r, e) {
  if (r === 1 / 0 || r === -1 / 0 || r !== r || r && r > -1e3 && r < 1e3 || rn.call(/e/, e))
    return e;
  var n = /[0-9](?=(?:[0-9]{3})+(?![0-9]))/g;
  if (typeof r == "number") {
    var t = r < 0 ? -Pr(-r) : Pr(r);
    if (t !== r) {
      var o = String(t), i = fr.call(e, o.length + 1);
      return ee.call(o, n, "$&_") + "." + ee.call(ee.call(i, /([0-9]{3})/g, "$&_"), /_$/, "");
    }
  }
  return ee.call(e, n, "$&_");
}
var nr = Nt, Mr = nr.custom, Ur = on(Mr) ? Mr : null, Ct = function r(e, n, t, o) {
  var i = n || {};
  if (H(i, "quoteStyle") && i.quoteStyle !== "single" && i.quoteStyle !== "double")
    throw new TypeError('option "quoteStyle" must be "single" or "double"');
  if (H(i, "maxStringLength") && (typeof i.maxStringLength == "number" ? i.maxStringLength < 0 && i.maxStringLength !== 1 / 0 : i.maxStringLength !== null))
    throw new TypeError('option "maxStringLength", if provided, must be a positive integer, Infinity, or `null`');
  var a = H(i, "customInspect") ? i.customInspect : !0;
  if (typeof a != "boolean" && a !== "symbol")
    throw new TypeError("option \"customInspect\", if provided, must be `true`, `false`, or `'symbol'`");
  if (H(i, "indent") && i.indent !== null && i.indent !== "	" && !(parseInt(i.indent, 10) === i.indent && i.indent > 0))
    throw new TypeError('option "indent" must be "\\t", an integer > 0, or `null`');
  if (H(i, "numericSeparator") && typeof i.numericSeparator != "boolean")
    throw new TypeError('option "numericSeparator", if provided, must be `true` or `false`');
  var c = i.numericSeparator;
  if (typeof e > "u")
    return "undefined";
  if (e === null)
    return "null";
  if (typeof e == "boolean")
    return e ? "true" : "false";
  if (typeof e == "string")
    return sn(e, i);
  if (typeof e == "number") {
    if (e === 0)
      return 1 / 0 / e > 0 ? "0" : "-0";
    var s = String(e);
    return c ? Fr(e, s) : s;
  }
  if (typeof e == "bigint") {
    var l = String(e) + "n";
    return c ? Fr(e, l) : l;
  }
  var f = typeof i.depth > "u" ? 5 : i.depth;
  if (typeof t > "u" && (t = 0), t >= f && f > 0 && typeof e == "object")
    return tr(e) ? "[Array]" : "[Object]";
  var g = Jt(i, t);
  if (typeof o > "u")
    o = [];
  else if (an(o, e) >= 0)
    return "[Circular]";
  function p(G, J, Z) {
    if (J && (o = Pt.call(o), o.push(J)), Z) {
      var ge = {
        depth: i.depth
      };
      return H(i, "quoteStyle") && (ge.quoteStyle = i.quoteStyle), r(G, ge, t + 1, o);
    }
    return r(G, i, t + 1, o);
  }
  if (typeof e == "function" && !xr(e)) {
    var E = Gt(e), R = we(e, p);
    return "[Function" + (E ? ": " + E : " (anonymous)") + "]" + (R.length > 0 ? " { " + j.call(R, ", ") + " }" : "");
  }
  if (on(e)) {
    var N = ue ? ee.call(String(e), /^(Symbol\(.*\))_[^)]*$/, "$1") : rr.call(e);
    return typeof e == "object" && !ue ? Ee(N) : N;
  }
  if (qt(e)) {
    for (var I = "<" + $r.call(String(e.nodeName)), B = e.attributes || [], V = 0; V < B.length; V++)
      I += " " + B[V].name + "=" + tn(Ft(B[V].value), "double", i);
    return I += ">", e.childNodes && e.childNodes.length && (I += "..."), I += "</" + $r.call(String(e.nodeName)) + ">", I;
  }
  if (tr(e)) {
    if (e.length === 0)
      return "[]";
    var O = we(e, p);
    return g && !Xt(O) ? "[" + or(O, g) + "]" : "[ " + j.call(O, ", ") + " ]";
  }
  if (Ut(e)) {
    var $ = we(e, p);
    return !("cause" in Error.prototype) && "cause" in e && !nn.call(e, "cause") ? "{ [" + String(e) + "] " + j.call(Dr.call("[cause]: " + p(e.cause), $), ", ") + " }" : $.length === 0 ? "[" + String(e) + "]" : "{ [" + String(e) + "] " + j.call($, ", ") + " }";
  }
  if (typeof e == "object" && a) {
    if (Ur && typeof e[Ur] == "function" && nr)
      return nr(e, { depth: f - t });
    if (a !== "symbol" && typeof e.inspect == "function")
      return e.inspect();
  }
  if (Kt(e)) {
    var F = [];
    return Ir && Ir.call(e, function(G, J) {
      F.push(p(J, e, !0) + " => " + p(G, e));
    }), Lr("Map", Ce.call(e), F, g);
  }
  if (jt(e)) {
    var A = [];
    return br && br.call(e, function(G) {
      A.push(p(G, e));
    }), Lr("Set", Fe.call(e), A, g);
  }
  if (kt(e))
    return Qe("WeakMap");
  if (Yt(e))
    return Qe("WeakSet");
  if (Qt(e))
    return Qe("WeakRef");
  if (Lt(e))
    return Ee(p(Number(e)));
  if (Vt(e))
    return Ee(p(er.call(e)));
  if (Bt(e))
    return Ee(It.call(e));
  if (xt(e))
    return Ee(p(String(e)));
  if (typeof window < "u" && e === window)
    return "{ [object Window] }";
  if (e === Nn)
    return "{ [object globalThis] }";
  if (!Mt(e) && !xr(e)) {
    var w = we(e, p), Y = Cr ? Cr(e) === Object.prototype : e instanceof Object || e.constructor === Object, W = e instanceof Object ? "" : "null prototype", X = !Y && C && Object(e) === e && C in e ? fr.call(re(e), 8, -1) : W ? "Object" : "", Ae = Y || typeof e.constructor != "function" ? "" : e.constructor.name ? e.constructor.name + " " : "", ie = Ae + (X || W ? "[" + j.call(Dr.call([], X || [], W || []), ": ") + "] " : "");
    return w.length === 0 ? ie + "{}" : g ? ie + "{" + or(w, g) + "}" : ie + "{ " + j.call(w, ", ") + " }";
  }
  return String(e);
};
function tn(r, e, n) {
  var t = (n.quoteStyle || e) === "double" ? '"' : "'";
  return t + r + t;
}
function Ft(r) {
  return ee.call(String(r), /"/g, "&quot;");
}
function tr(r) {
  return re(r) === "[object Array]" && (!C || !(typeof r == "object" && C in r));
}
function Mt(r) {
  return re(r) === "[object Date]" && (!C || !(typeof r == "object" && C in r));
}
function xr(r) {
  return re(r) === "[object RegExp]" && (!C || !(typeof r == "object" && C in r));
}
function Ut(r) {
  return re(r) === "[object Error]" && (!C || !(typeof r == "object" && C in r));
}
function xt(r) {
  return re(r) === "[object String]" && (!C || !(typeof r == "object" && C in r));
}
function Lt(r) {
  return re(r) === "[object Number]" && (!C || !(typeof r == "object" && C in r));
}
function Bt(r) {
  return re(r) === "[object Boolean]" && (!C || !(typeof r == "object" && C in r));
}
function on(r) {
  if (ue)
    return r && typeof r == "object" && r instanceof Symbol;
  if (typeof r == "symbol")
    return !0;
  if (!r || typeof r != "object" || !rr)
    return !1;
  try {
    return rr.call(r), !0;
  } catch {
  }
  return !1;
}
function Vt(r) {
  if (!r || typeof r != "object" || !er)
    return !1;
  try {
    return er.call(r), !0;
  } catch {
  }
  return !1;
}
var Wt = Object.prototype.hasOwnProperty || function(r) {
  return r in this;
};
function H(r, e) {
  return Wt.call(r, e);
}
function re(r) {
  return bt.call(r);
}
function Gt(r) {
  if (r.name)
    return r.name;
  var e = $t.call(_t.call(r), /^function\s*([\w$]+)/);
  return e ? e[1] : null;
}
function an(r, e) {
  if (r.indexOf)
    return r.indexOf(e);
  for (var n = 0, t = r.length; n < t; n++)
    if (r[n] === e)
      return n;
  return -1;
}
function Kt(r) {
  if (!Ce || !r || typeof r != "object")
    return !1;
  try {
    Ce.call(r);
    try {
      Fe.call(r);
    } catch {
      return !0;
    }
    return r instanceof Map;
  } catch {
  }
  return !1;
}
function kt(r) {
  if (!ve || !r || typeof r != "object")
    return !1;
  try {
    ve.call(r, ve);
    try {
      Oe.call(r, Oe);
    } catch {
      return !0;
    }
    return r instanceof WeakMap;
  } catch {
  }
  return !1;
}
function Qt(r) {
  if (!_r || !r || typeof r != "object")
    return !1;
  try {
    return _r.call(r), !0;
  } catch {
  }
  return !1;
}
function jt(r) {
  if (!Fe || !r || typeof r != "object")
    return !1;
  try {
    Fe.call(r);
    try {
      Ce.call(r);
    } catch {
      return !0;
    }
    return r instanceof Set;
  } catch {
  }
  return !1;
}
function Yt(r) {
  if (!Oe || !r || typeof r != "object")
    return !1;
  try {
    Oe.call(r, Oe);
    try {
      ve.call(r, ve);
    } catch {
      return !0;
    }
    return r instanceof WeakSet;
  } catch {
  }
  return !1;
}
function qt(r) {
  return !r || typeof r != "object" ? !1 : typeof HTMLElement < "u" && r instanceof HTMLElement ? !0 : typeof r.nodeName == "string" && typeof r.getAttribute == "function";
}
function sn(r, e) {
  if (r.length > e.maxStringLength) {
    var n = r.length - e.maxStringLength, t = "... " + n + " more character" + (n > 1 ? "s" : "");
    return sn(fr.call(r, 0, e.maxStringLength), e) + t;
  }
  var o = ee.call(ee.call(r, /(['\\])/g, "\\$1"), /[\x00-\x1f]/g, zt);
  return tn(o, "single", e);
}
function zt(r) {
  var e = r.charCodeAt(0), n = {
    8: "b",
    9: "t",
    10: "n",
    12: "f",
    13: "r"
  }[e];
  return n ? "\\" + n : "\\x" + (e < 16 ? "0" : "") + Dt.call(e.toString(16));
}
function Ee(r) {
  return "Object(" + r + ")";
}
function Qe(r) {
  return r + " { ? }";
}
function Lr(r, e, n, t) {
  var o = t ? or(n, t) : j.call(n, ", ");
  return r + " (" + e + ") {" + o + "}";
}
function Xt(r) {
  for (var e = 0; e < r.length; e++)
    if (an(r[e], `
`) >= 0)
      return !1;
  return !0;
}
function Jt(r, e) {
  var n;
  if (r.indent === "	")
    n = "	";
  else if (typeof r.indent == "number" && r.indent > 0)
    n = j.call(Array(r.indent + 1), " ");
  else
    return null;
  return {
    base: n,
    prev: j.call(Array(e + 1), n)
  };
}
function or(r, e) {
  if (r.length === 0)
    return "";
  var n = `
` + e.prev + e.base;
  return n + j.call(r, "," + n) + `
` + e.prev;
}
function we(r, e) {
  var n = tr(r), t = [];
  if (n) {
    t.length = r.length;
    for (var o = 0; o < r.length; o++)
      t[o] = H(r, o) ? e(r[o], r) : "";
  }
  var i = typeof ke == "function" ? ke(r) : [], a;
  if (ue) {
    a = {};
    for (var c = 0; c < i.length; c++)
      a["$" + i[c]] = i[c];
  }
  for (var s in r)
    H(r, s) && (n && String(Number(s)) === s && s < r.length || ue && a["$" + s] instanceof Symbol || (rn.call(/[^\w$]/, s) ? t.push(e(s, r) + ": " + e(r[s], r)) : t.push(s + ": " + e(r[s], r))));
  if (typeof ke == "function")
    for (var l = 0; l < i.length; l++)
      nn.call(r, i[l]) && t.push("[" + e(i[l]) + "]: " + e(r[i[l]], r));
  return t;
}
var cn = ye, de = Ot, Zt = Ct, Ht = Se, Te = cn("%WeakMap%", !0), Ie = cn("%Map%", !0), eo = de("WeakMap.prototype.get", !0), ro = de("WeakMap.prototype.set", !0), no = de("WeakMap.prototype.has", !0), to = de("Map.prototype.get", !0), oo = de("Map.prototype.set", !0), io = de("Map.prototype.has", !0), ur = function(r, e) {
  for (var n = r, t; (t = n.next) !== null; n = t)
    if (t.key === e)
      return n.next = t.next, t.next = /** @type {NonNullable<typeof list.next>} */
      r.next, r.next = t, t;
}, ao = function(r, e) {
  var n = ur(r, e);
  return n && n.value;
}, so = function(r, e, n) {
  var t = ur(r, e);
  t ? t.value = n : r.next = /** @type {import('.').ListNode<typeof value>} */
  {
    // eslint-disable-line no-param-reassign, no-extra-parens
    key: e,
    next: r.next,
    value: n
  };
}, co = function(r, e) {
  return !!ur(r, e);
}, lo = function() {
  var e, n, t, o = {
    assert: function(i) {
      if (!o.has(i))
        throw new Ht("Side channel does not contain " + Zt(i));
    },
    get: function(i) {
      if (Te && i && (typeof i == "object" || typeof i == "function")) {
        if (e)
          return eo(e, i);
      } else if (Ie) {
        if (n)
          return to(n, i);
      } else if (t)
        return ao(t, i);
    },
    has: function(i) {
      if (Te && i && (typeof i == "object" || typeof i == "function")) {
        if (e)
          return no(e, i);
      } else if (Ie) {
        if (n)
          return io(n, i);
      } else if (t)
        return co(t, i);
      return !1;
    },
    set: function(i, a) {
      Te && i && (typeof i == "object" || typeof i == "function") ? (e || (e = new Te()), ro(e, i, a)) : Ie ? (n || (n = new Ie()), oo(n, i, a)) : (t || (t = { key: {}, next: null }), so(t, i, a));
    }
  };
  return o;
}, fo = String.prototype.replace, uo = /%20/g, je = {
  RFC1738: "RFC1738",
  RFC3986: "RFC3986"
}, pr = {
  default: je.RFC3986,
  formatters: {
    RFC1738: function(r) {
      return fo.call(r, uo, "+");
    },
    RFC3986: function(r) {
      return String(r);
    }
  },
  RFC1738: je.RFC1738,
  RFC3986: je.RFC3986
}, po = pr, Ye = Object.prototype.hasOwnProperty, ne = Array.isArray, k = function() {
  for (var r = [], e = 0; e < 256; ++e)
    r.push("%" + ((e < 16 ? "0" : "") + e.toString(16)).toUpperCase());
  return r;
}(), yo = function(e) {
  for (; e.length > 1; ) {
    var n = e.pop(), t = n.obj[n.prop];
    if (ne(t)) {
      for (var o = [], i = 0; i < t.length; ++i)
        typeof t[i] < "u" && o.push(t[i]);
      n.obj[n.prop] = o;
    }
  }
}, ln = function(e, n) {
  for (var t = n && n.plainObjects ? /* @__PURE__ */ Object.create(null) : {}, o = 0; o < e.length; ++o)
    typeof e[o] < "u" && (t[o] = e[o]);
  return t;
}, go = function r(e, n, t) {
  if (!n)
    return e;
  if (typeof n != "object") {
    if (ne(e))
      e.push(n);
    else if (e && typeof e == "object")
      (t && (t.plainObjects || t.allowPrototypes) || !Ye.call(Object.prototype, n)) && (e[n] = !0);
    else
      return [e, n];
    return e;
  }
  if (!e || typeof e != "object")
    return [e].concat(n);
  var o = e;
  return ne(e) && !ne(n) && (o = ln(e, t)), ne(e) && ne(n) ? (n.forEach(function(i, a) {
    if (Ye.call(e, a)) {
      var c = e[a];
      c && typeof c == "object" && i && typeof i == "object" ? e[a] = r(c, i, t) : e.push(i);
    } else
      e[a] = i;
  }), e) : Object.keys(n).reduce(function(i, a) {
    var c = n[a];
    return Ye.call(i, a) ? i[a] = r(i[a], c, t) : i[a] = c, i;
  }, o);
}, Eo = function(e, n) {
  return Object.keys(n).reduce(function(t, o) {
    return t[o] = n[o], t;
  }, e);
}, ho = function(r, e, n) {
  var t = r.replace(/\+/g, " ");
  if (n === "iso-8859-1")
    return t.replace(/%[0-9a-f]{2}/gi, unescape);
  try {
    return decodeURIComponent(t);
  } catch {
    return t;
  }
}, qe = 1024, Ro = function(e, n, t, o, i) {
  if (e.length === 0)
    return e;
  var a = e;
  if (typeof e == "symbol" ? a = Symbol.prototype.toString.call(e) : typeof e != "string" && (a = String(e)), t === "iso-8859-1")
    return escape(a).replace(/%u[0-9a-f]{4}/gi, function(E) {
      return "%26%23" + parseInt(E.slice(2), 16) + "%3B";
    });
  for (var c = "", s = 0; s < a.length; s += qe) {
    for (var l = a.length >= qe ? a.slice(s, s + qe) : a, f = [], g = 0; g < l.length; ++g) {
      var p = l.charCodeAt(g);
      if (p === 45 || p === 46 || p === 95 || p === 126 || p >= 48 && p <= 57 || p >= 65 && p <= 90 || p >= 97 && p <= 122 || i === po.RFC1738 && (p === 40 || p === 41)) {
        f[f.length] = l.charAt(g);
        continue;
      }
      if (p < 128) {
        f[f.length] = k[p];
        continue;
      }
      if (p < 2048) {
        f[f.length] = k[192 | p >> 6] + k[128 | p & 63];
        continue;
      }
      if (p < 55296 || p >= 57344) {
        f[f.length] = k[224 | p >> 12] + k[128 | p >> 6 & 63] + k[128 | p & 63];
        continue;
      }
      g += 1, p = 65536 + ((p & 1023) << 10 | l.charCodeAt(g) & 1023), f[f.length] = k[240 | p >> 18] + k[128 | p >> 12 & 63] + k[128 | p >> 6 & 63] + k[128 | p & 63];
    }
    c += f.join("");
  }
  return c;
}, vo = function(e) {
  for (var n = [{ obj: { o: e }, prop: "o" }], t = [], o = 0; o < n.length; ++o)
    for (var i = n[o], a = i.obj[i.prop], c = Object.keys(a), s = 0; s < c.length; ++s) {
      var l = c[s], f = a[l];
      typeof f == "object" && f !== null && t.indexOf(f) === -1 && (n.push({ obj: a, prop: l }), t.push(f));
    }
  return yo(n), e;
}, Oo = function(e) {
  return Object.prototype.toString.call(e) === "[object RegExp]";
}, mo = function(e) {
  return !e || typeof e != "object" ? !1 : !!(e.constructor && e.constructor.isBuffer && e.constructor.isBuffer(e));
}, So = function(e, n) {
  return [].concat(e, n);
}, No = function(e, n) {
  if (ne(e)) {
    for (var t = [], o = 0; o < e.length; o += 1)
      t.push(n(e[o]));
    return t;
  }
  return n(e);
}, fn = {
  arrayToObject: ln,
  assign: Eo,
  combine: So,
  compact: vo,
  decode: ho,
  encode: Ro,
  isBuffer: mo,
  isRegExp: Oo,
  maybeMap: No,
  merge: go
}, un = lo, $e = fn, me = pr, Ao = Object.prototype.hasOwnProperty, pn = {
  brackets: function(e) {
    return e + "[]";
  },
  comma: "comma",
  indices: function(e, n) {
    return e + "[" + n + "]";
  },
  repeat: function(e) {
    return e;
  }
}, Q = Array.isArray, wo = Array.prototype.push, yn = function(r, e) {
  wo.apply(r, Q(e) ? e : [e]);
}, To = Date.prototype.toISOString, Br = me.default, _ = {
  addQueryPrefix: !1,
  allowDots: !1,
  allowEmptyArrays: !1,
  arrayFormat: "indices",
  charset: "utf-8",
  charsetSentinel: !1,
  delimiter: "&",
  encode: !0,
  encodeDotInKeys: !1,
  encoder: $e.encode,
  encodeValuesOnly: !1,
  format: Br,
  formatter: me.formatters[Br],
  // deprecated
  indices: !1,
  serializeDate: function(e) {
    return To.call(e);
  },
  skipNulls: !1,
  strictNullHandling: !1
}, Io = function(e) {
  return typeof e == "string" || typeof e == "number" || typeof e == "boolean" || typeof e == "symbol" || typeof e == "bigint";
}, ze = {}, bo = function r(e, n, t, o, i, a, c, s, l, f, g, p, E, R, N, I, B, V) {
  for (var O = e, $ = V, F = 0, A = !1; ($ = $.get(ze)) !== void 0 && !A; ) {
    var w = $.get(e);
    if (F += 1, typeof w < "u") {
      if (w === F)
        throw new RangeError("Cyclic object value");
      A = !0;
    }
    typeof $.get(ze) > "u" && (F = 0);
  }
  if (typeof f == "function" ? O = f(n, O) : O instanceof Date ? O = E(O) : t === "comma" && Q(O) && (O = $e.maybeMap(O, function(xe) {
    return xe instanceof Date ? E(xe) : xe;
  })), O === null) {
    if (a)
      return l && !I ? l(n, _.encoder, B, "key", R) : n;
    O = "";
  }
  if (Io(O) || $e.isBuffer(O)) {
    if (l) {
      var Y = I ? n : l(n, _.encoder, B, "key", R);
      return [N(Y) + "=" + N(l(O, _.encoder, B, "value", R))];
    }
    return [N(n) + "=" + N(String(O))];
  }
  var W = [];
  if (typeof O > "u")
    return W;
  var X;
  if (t === "comma" && Q(O))
    I && l && (O = $e.maybeMap(O, l)), X = [{ value: O.length > 0 ? O.join(",") || null : void 0 }];
  else if (Q(f))
    X = f;
  else {
    var Ae = Object.keys(O);
    X = g ? Ae.sort(g) : Ae;
  }
  var ie = s ? n.replace(/\./g, "%2E") : n, G = o && Q(O) && O.length === 1 ? ie + "[]" : ie;
  if (i && Q(O) && O.length === 0)
    return G + "[]";
  for (var J = 0; J < X.length; ++J) {
    var Z = X[J], ge = typeof Z == "object" && typeof Z.value < "u" ? Z.value : O[Z];
    if (!(c && ge === null)) {
      var Ue = p && s ? Z.replace(/\./g, "%2E") : Z, gn = Q(O) ? typeof t == "function" ? t(G, Ue) : G : G + (p ? "." + Ue : "[" + Ue + "]");
      V.set(e, F);
      var Er = un();
      Er.set(ze, V), yn(W, r(
        ge,
        gn,
        t,
        o,
        i,
        a,
        c,
        s,
        t === "comma" && I && Q(O) ? null : l,
        f,
        g,
        p,
        E,
        R,
        N,
        I,
        B,
        Er
      ));
    }
  }
  return W;
}, _o = function(e) {
  if (!e)
    return _;
  if (typeof e.allowEmptyArrays < "u" && typeof e.allowEmptyArrays != "boolean")
    throw new TypeError("`allowEmptyArrays` option can only be `true` or `false`, when provided");
  if (typeof e.encodeDotInKeys < "u" && typeof e.encodeDotInKeys != "boolean")
    throw new TypeError("`encodeDotInKeys` option can only be `true` or `false`, when provided");
  if (e.encoder !== null && typeof e.encoder < "u" && typeof e.encoder != "function")
    throw new TypeError("Encoder has to be a function.");
  var n = e.charset || _.charset;
  if (typeof e.charset < "u" && e.charset !== "utf-8" && e.charset !== "iso-8859-1")
    throw new TypeError("The charset option must be either utf-8, iso-8859-1, or undefined");
  var t = me.default;
  if (typeof e.format < "u") {
    if (!Ao.call(me.formatters, e.format))
      throw new TypeError("Unknown format option provided.");
    t = e.format;
  }
  var o = me.formatters[t], i = _.filter;
  (typeof e.filter == "function" || Q(e.filter)) && (i = e.filter);
  var a;
  if (e.arrayFormat in pn ? a = e.arrayFormat : "indices" in e ? a = e.indices ? "indices" : "repeat" : a = _.arrayFormat, "commaRoundTrip" in e && typeof e.commaRoundTrip != "boolean")
    throw new TypeError("`commaRoundTrip` must be a boolean, or absent");
  var c = typeof e.allowDots > "u" ? e.encodeDotInKeys === !0 ? !0 : _.allowDots : !!e.allowDots;
  return {
    addQueryPrefix: typeof e.addQueryPrefix == "boolean" ? e.addQueryPrefix : _.addQueryPrefix,
    allowDots: c,
    allowEmptyArrays: typeof e.allowEmptyArrays == "boolean" ? !!e.allowEmptyArrays : _.allowEmptyArrays,
    arrayFormat: a,
    charset: n,
    charsetSentinel: typeof e.charsetSentinel == "boolean" ? e.charsetSentinel : _.charsetSentinel,
    commaRoundTrip: e.commaRoundTrip,
    delimiter: typeof e.delimiter > "u" ? _.delimiter : e.delimiter,
    encode: typeof e.encode == "boolean" ? e.encode : _.encode,
    encodeDotInKeys: typeof e.encodeDotInKeys == "boolean" ? e.encodeDotInKeys : _.encodeDotInKeys,
    encoder: typeof e.encoder == "function" ? e.encoder : _.encoder,
    encodeValuesOnly: typeof e.encodeValuesOnly == "boolean" ? e.encodeValuesOnly : _.encodeValuesOnly,
    filter: i,
    format: t,
    formatter: o,
    serializeDate: typeof e.serializeDate == "function" ? e.serializeDate : _.serializeDate,
    skipNulls: typeof e.skipNulls == "boolean" ? e.skipNulls : _.skipNulls,
    sort: typeof e.sort == "function" ? e.sort : null,
    strictNullHandling: typeof e.strictNullHandling == "boolean" ? e.strictNullHandling : _.strictNullHandling
  };
}, $o = function(r, e) {
  var n = r, t = _o(e), o, i;
  typeof t.filter == "function" ? (i = t.filter, n = i("", n)) : Q(t.filter) && (i = t.filter, o = i);
  var a = [];
  if (typeof n != "object" || n === null)
    return "";
  var c = pn[t.arrayFormat], s = c === "comma" && t.commaRoundTrip;
  o || (o = Object.keys(n)), t.sort && o.sort(t.sort);
  for (var l = un(), f = 0; f < o.length; ++f) {
    var g = o[f];
    t.skipNulls && n[g] === null || yn(a, bo(
      n[g],
      g,
      c,
      s,
      t.allowEmptyArrays,
      t.strictNullHandling,
      t.skipNulls,
      t.encodeDotInKeys,
      t.encode ? t.encoder : null,
      t.filter,
      t.sort,
      t.allowDots,
      t.serializeDate,
      t.format,
      t.formatter,
      t.encodeValuesOnly,
      t.charset,
      l
    ));
  }
  var p = a.join(t.delimiter), E = t.addQueryPrefix === !0 ? "?" : "";
  return t.charsetSentinel && (t.charset === "iso-8859-1" ? E += "utf8=%26%2310003%3B&" : E += "utf8=%E2%9C%93&"), p.length > 0 ? E + p : "";
}, pe = fn, ir = Object.prototype.hasOwnProperty, Do = Array.isArray, T = {
  allowDots: !1,
  allowEmptyArrays: !1,
  allowPrototypes: !1,
  allowSparse: !1,
  arrayLimit: 20,
  charset: "utf-8",
  charsetSentinel: !1,
  comma: !1,
  decodeDotInKeys: !1,
  decoder: pe.decode,
  delimiter: "&",
  depth: 5,
  duplicates: "combine",
  ignoreQueryPrefix: !1,
  interpretNumericEntities: !1,
  parameterLimit: 1e3,
  parseArrays: !0,
  plainObjects: !1,
  strictNullHandling: !1
}, Po = function(r) {
  return r.replace(/&#(\d+);/g, function(e, n) {
    return String.fromCharCode(parseInt(n, 10));
  });
}, dn = function(r, e) {
  return r && typeof r == "string" && e.comma && r.indexOf(",") > -1 ? r.split(",") : r;
}, Co = "utf8=%26%2310003%3B", Fo = "utf8=%E2%9C%93", Mo = function(e, n) {
  var t = { __proto__: null }, o = n.ignoreQueryPrefix ? e.replace(/^\?/, "") : e, i = n.parameterLimit === 1 / 0 ? void 0 : n.parameterLimit, a = o.split(n.delimiter, i), c = -1, s, l = n.charset;
  if (n.charsetSentinel)
    for (s = 0; s < a.length; ++s)
      a[s].indexOf("utf8=") === 0 && (a[s] === Fo ? l = "utf-8" : a[s] === Co && (l = "iso-8859-1"), c = s, s = a.length);
  for (s = 0; s < a.length; ++s)
    if (s !== c) {
      var f = a[s], g = f.indexOf("]="), p = g === -1 ? f.indexOf("=") : g + 1, E, R;
      p === -1 ? (E = n.decoder(f, T.decoder, l, "key"), R = n.strictNullHandling ? null : "") : (E = n.decoder(f.slice(0, p), T.decoder, l, "key"), R = pe.maybeMap(
        dn(f.slice(p + 1), n),
        function(I) {
          return n.decoder(I, T.decoder, l, "value");
        }
      )), R && n.interpretNumericEntities && l === "iso-8859-1" && (R = Po(R)), f.indexOf("[]=") > -1 && (R = Do(R) ? [R] : R);
      var N = ir.call(t, E);
      N && n.duplicates === "combine" ? t[E] = pe.combine(t[E], R) : (!N || n.duplicates === "last") && (t[E] = R);
    }
  return t;
}, Uo = function(r, e, n, t) {
  for (var o = t ? e : dn(e, n), i = r.length - 1; i >= 0; --i) {
    var a, c = r[i];
    if (c === "[]" && n.parseArrays)
      a = n.allowEmptyArrays && o === "" ? [] : [].concat(o);
    else {
      a = n.plainObjects ? /* @__PURE__ */ Object.create(null) : {};
      var s = c.charAt(0) === "[" && c.charAt(c.length - 1) === "]" ? c.slice(1, -1) : c, l = n.decodeDotInKeys ? s.replace(/%2E/g, ".") : s, f = parseInt(l, 10);
      !n.parseArrays && l === "" ? a = { 0: o } : !isNaN(f) && c !== l && String(f) === l && f >= 0 && n.parseArrays && f <= n.arrayLimit ? (a = [], a[f] = o) : l !== "__proto__" && (a[l] = o);
    }
    o = a;
  }
  return o;
}, xo = function(e, n, t, o) {
  if (e) {
    var i = t.allowDots ? e.replace(/\.([^.[]+)/g, "[$1]") : e, a = /(\[[^[\]]*])/, c = /(\[[^[\]]*])/g, s = t.depth > 0 && a.exec(i), l = s ? i.slice(0, s.index) : i, f = [];
    if (l) {
      if (!t.plainObjects && ir.call(Object.prototype, l) && !t.allowPrototypes)
        return;
      f.push(l);
    }
    for (var g = 0; t.depth > 0 && (s = c.exec(i)) !== null && g < t.depth; ) {
      if (g += 1, !t.plainObjects && ir.call(Object.prototype, s[1].slice(1, -1)) && !t.allowPrototypes)
        return;
      f.push(s[1]);
    }
    return s && f.push("[" + i.slice(s.index) + "]"), Uo(f, n, t, o);
  }
}, Lo = function(e) {
  if (!e)
    return T;
  if (typeof e.allowEmptyArrays < "u" && typeof e.allowEmptyArrays != "boolean")
    throw new TypeError("`allowEmptyArrays` option can only be `true` or `false`, when provided");
  if (typeof e.decodeDotInKeys < "u" && typeof e.decodeDotInKeys != "boolean")
    throw new TypeError("`decodeDotInKeys` option can only be `true` or `false`, when provided");
  if (e.decoder !== null && typeof e.decoder < "u" && typeof e.decoder != "function")
    throw new TypeError("Decoder has to be a function.");
  if (typeof e.charset < "u" && e.charset !== "utf-8" && e.charset !== "iso-8859-1")
    throw new TypeError("The charset option must be either utf-8, iso-8859-1, or undefined");
  var n = typeof e.charset > "u" ? T.charset : e.charset, t = typeof e.duplicates > "u" ? T.duplicates : e.duplicates;
  if (t !== "combine" && t !== "first" && t !== "last")
    throw new TypeError("The duplicates option must be either combine, first, or last");
  var o = typeof e.allowDots > "u" ? e.decodeDotInKeys === !0 ? !0 : T.allowDots : !!e.allowDots;
  return {
    allowDots: o,
    allowEmptyArrays: typeof e.allowEmptyArrays == "boolean" ? !!e.allowEmptyArrays : T.allowEmptyArrays,
    allowPrototypes: typeof e.allowPrototypes == "boolean" ? e.allowPrototypes : T.allowPrototypes,
    allowSparse: typeof e.allowSparse == "boolean" ? e.allowSparse : T.allowSparse,
    arrayLimit: typeof e.arrayLimit == "number" ? e.arrayLimit : T.arrayLimit,
    charset: n,
    charsetSentinel: typeof e.charsetSentinel == "boolean" ? e.charsetSentinel : T.charsetSentinel,
    comma: typeof e.comma == "boolean" ? e.comma : T.comma,
    decodeDotInKeys: typeof e.decodeDotInKeys == "boolean" ? e.decodeDotInKeys : T.decodeDotInKeys,
    decoder: typeof e.decoder == "function" ? e.decoder : T.decoder,
    delimiter: typeof e.delimiter == "string" || pe.isRegExp(e.delimiter) ? e.delimiter : T.delimiter,
    // eslint-disable-next-line no-implicit-coercion, no-extra-parens
    depth: typeof e.depth == "number" || e.depth === !1 ? +e.depth : T.depth,
    duplicates: t,
    ignoreQueryPrefix: e.ignoreQueryPrefix === !0,
    interpretNumericEntities: typeof e.interpretNumericEntities == "boolean" ? e.interpretNumericEntities : T.interpretNumericEntities,
    parameterLimit: typeof e.parameterLimit == "number" ? e.parameterLimit : T.parameterLimit,
    parseArrays: e.parseArrays !== !1,
    plainObjects: typeof e.plainObjects == "boolean" ? e.plainObjects : T.plainObjects,
    strictNullHandling: typeof e.strictNullHandling == "boolean" ? e.strictNullHandling : T.strictNullHandling
  };
}, Bo = function(r, e) {
  var n = Lo(e);
  if (r === "" || r === null || typeof r > "u")
    return n.plainObjects ? /* @__PURE__ */ Object.create(null) : {};
  for (var t = typeof r == "string" ? Mo(r, n) : r, o = n.plainObjects ? /* @__PURE__ */ Object.create(null) : {}, i = Object.keys(t), a = 0; a < i.length; ++a) {
    var c = i[a], s = xo(c, t[c], n, typeof r == "string");
    o = pe.merge(o, s, n);
  }
  return n.allowSparse === !0 ? o : pe.compact(o);
}, Vo = $o, Wo = Bo, Go = pr, Vr = {
  formats: Go,
  parse: Wo,
  stringify: Vo
}, Ko = globalThis.fetch, ko = globalThis.FormData;
function Qo(r) {
  return (r == null ? void 0 : r.then) != null;
}
function Xe(r, e) {
  const n = r[Symbol.iterator]();
  let t = !1;
  function o() {
    t = !0;
  }
  function i() {
    const { done: a, value: c } = n.next();
    if (a)
      return;
    const s = e(c, o);
    if (Qo(s))
      return s.then(() => {
        if (!t)
          return i();
      });
    if (!t)
      return i();
  }
  return i();
}
const Wr = {};
function jo(r) {
  return new Proxy(r, {
    get(e, n, t) {
      if (n === "json")
        return () => e.then((i) => i.json());
      const o = Reflect.get(e, n, t);
      return typeof o == "function" ? o.bind(e) : o;
    },
    has(e, n) {
      return n === "json" ? !0 : Reflect.has(e, n);
    }
  });
}
const Gr = {
  indices: !1,
  arrayFormat: "repeat"
};
class Yo extends Error {
  constructor(e, n, t, o) {
    super(`Validation failed for ${n} ${e}`), this.path = e, this.method = n, this.errors = t, this.response = o;
  }
  [Symbol.iterator]() {
    return this.errors[Symbol.iterator]();
  }
}
function qo() {
  return {
    onResponse({ path: r, method: e, response: n }) {
      if (n.status === 400 && n.headers.get("x-error-type") === "validation")
        return n.json().then((t) => {
          if (t.errors)
            throw new Yo(r, e, t.errors, n);
        });
    }
  };
}
function zo({ endpoint: r, fetchFn: e = Ko, plugins: n = [], globalParams: t }) {
  n.unshift(qo());
  const o = [], i = [], a = [];
  for (const c of n)
    c.onRequestInit && o.push(c.onRequestInit), c.onFetch && i.push(c.onFetch), c.onResponse && a.push(c.onResponse);
  return new Proxy(Wr, {
    get(c, s) {
      return new Proxy(Wr, {
        get(l, f) {
          async function g(p = {}) {
            t != null && t.headers && (p.headers = {
              ...t.headers,
              ...p.headers
            }), t != null && t.query && (p.query = {
              ...t.query,
              ...p.query
            }), t != null && t.params && (p.params = {
              ...t.params,
              ...p.params
            }), t != null && t.json && (p.json = {
              ...t.json,
              ...p.json
            }), t != null && t.formData && (p.formData = {
              ...t.formData,
              ...p.formData
            }), t != null && t.formUrlEncoded && (p.formUrlEncoded = {
              ...t.formUrlEncoded,
              ...p.formUrlEncoded
            });
            const { headers: E = {}, params: R, json: N, formData: I, formUrlEncoded: B, query: V, ...O } = p;
            if (R)
              for (const A in R) {
                const w = R[A];
                w && (s = s.replace(`{${A}}`, w).replace(`:${A}`, w));
              }
            !s.startsWith("/") && !s.startsWith("http") && (s = `/${s}`);
            const $ = {
              ...O,
              method: f,
              headers: E
            };
            if (N && ($.body = JSON.stringify(N), E["Content-Type"] = "application/json"), I) {
              $.body = new ko();
              for (const A in I) {
                const w = I[A];
                w != null && $.body.append(A, w);
              }
            }
            B && ($.body = Vr.stringify(B, Gr), $.headers["Content-Type"] = "application/x-www-form-urlencoded");
            let F;
            if (o.length) {
              const A = {
                path: s,
                method: f,
                requestParams: p,
                requestInit: $,
                endResponse(w) {
                  F = w;
                }
              };
              await Xe(o, (w) => w(A));
            }
            if (F == null) {
              let A = s;
              if (r && !s.startsWith("http") && (A = `${r}${s}`), V) {
                const Y = Vr.stringify(V, Gr);
                A.includes("?") ? A += "&" + Y : A += "?" + Y;
              }
              let w = e;
              if (i.length > 0) {
                const Y = {
                  url: A,
                  init: $,
                  fetchFn: w,
                  setFetchFn(W) {
                    w = W;
                  }
                };
                await Xe(i, (W) => W(Y));
              }
              F = await w(A, $);
            }
            if (a.length > 0) {
              const A = {
                path: s,
                method: f,
                requestParams: p,
                requestInit: $,
                response: F
              };
              await Xe(a, (w) => w(A));
            }
            return F;
          }
          return function(E = {}) {
            return jo(g(E));
          };
        }
      });
    }
  });
}
function Xo(r, e, n, t) {
  const o = `${e}://${n}:${r}${t}`;
  return zo({
    endpoint: o
  });
}
const Jo = "/auth", Zo = "/ping", Ho = "/opcua/localip", ei = "/opcua/sessions", ri = "/opcua/sessions/{sessionId}", Kr = "/opcua/sessions/{sessionId}/namespaces/{namespaceUri}", ni = "/opcua/sessions/{sessionId}/nodes/{nodeId}/attributes/{attributeName}", ti = "/opcua/sessions/{sessionId}/nodes/{nodeId}/methods/{methodId}", oi = "/opcua/sessions/{sessionId}/nodes/{nodeId}/attributes/{attributeName}";
var P = /* @__PURE__ */ ((r) => (r[r.CONTINUE = 100] = "CONTINUE", r[r.SWITCHING_PROTOCOLS = 101] = "SWITCHING_PROTOCOLS", r[r.PROCESSING = 102] = "PROCESSING", r[r.OK = 200] = "OK", r[r.CREATED = 201] = "CREATED", r[r.ACCEPTED = 202] = "ACCEPTED", r[r.NON_AUTHORITATIVE_INFORMATION = 203] = "NON_AUTHORITATIVE_INFORMATION", r[r.NO_CONTENT = 204] = "NO_CONTENT", r[r.RESET_CONTENT = 205] = "RESET_CONTENT", r[r.PARTIAL_CONTENT = 206] = "PARTIAL_CONTENT", r[r.MULTI_STATUS = 207] = "MULTI_STATUS", r[r.ALREADY_REPORTED = 208] = "ALREADY_REPORTED", r[r.IM_USED = 226] = "IM_USED", r[r.MULTIPLE_CHOICES = 300] = "MULTIPLE_CHOICES", r[r.MOVED_PERMANENTLY = 301] = "MOVED_PERMANENTLY", r[r.FOUND = 302] = "FOUND", r[r.SEE_OTHER = 303] = "SEE_OTHER", r[r.NOT_MODIFIED = 304] = "NOT_MODIFIED", r[r.USE_PROXY = 305] = "USE_PROXY", r[r.SWITCH_PROXY = 306] = "SWITCH_PROXY", r[r.TEMPORARY_REDIRECT = 307] = "TEMPORARY_REDIRECT", r[r.PERMANENT_REDIRECT = 308] = "PERMANENT_REDIRECT", r[r.BAD_REQUEST = 400] = "BAD_REQUEST", r[r.UNAUTHORIZED = 401] = "UNAUTHORIZED", r[r.PAYMENT_REQUIRED = 402] = "PAYMENT_REQUIRED", r[r.FORBIDDEN = 403] = "FORBIDDEN", r[r.NOT_FOUND = 404] = "NOT_FOUND", r[r.METHOD_NOT_ALLOWED = 405] = "METHOD_NOT_ALLOWED", r[r.NOT_ACCEPTABLE = 406] = "NOT_ACCEPTABLE", r[r.PROXY_AUTHENTICATION_REQUIRED = 407] = "PROXY_AUTHENTICATION_REQUIRED", r[r.REQUEST_TIMEOUT = 408] = "REQUEST_TIMEOUT", r[r.CONFLICT = 409] = "CONFLICT", r[r.GONE = 410] = "GONE", r[r.LENGTH_REQUIRED = 411] = "LENGTH_REQUIRED", r[r.PRECONDITION_FAILED = 412] = "PRECONDITION_FAILED", r[r.PAYLOAD_TOO_LARGE = 413] = "PAYLOAD_TOO_LARGE", r[r.URI_TOO_LONG = 414] = "URI_TOO_LONG", r[r.UNSUPPORTED_MEDIA_TYPE = 415] = "UNSUPPORTED_MEDIA_TYPE", r[r.RANGE_NOT_SATISFIABLE = 416] = "RANGE_NOT_SATISFIABLE", r[r.EXPECTATION_FAILED = 417] = "EXPECTATION_FAILED", r[r.I_AM_A_TEAPOT = 418] = "I_AM_A_TEAPOT", r[r.MISDIRECTED_REQUEST = 421] = "MISDIRECTED_REQUEST", r[r.UNPROCESSABLE_ENTITY = 422] = "UNPROCESSABLE_ENTITY", r[r.LOCKED = 423] = "LOCKED", r[r.FAILED_DEPENDENCY = 424] = "FAILED_DEPENDENCY", r[r.UPGRADE_REQUIRED = 426] = "UPGRADE_REQUIRED", r[r.PRECONDITION_REQUIRED = 428] = "PRECONDITION_REQUIRED", r[r.TOO_MANY_REQUESTS = 429] = "TOO_MANY_REQUESTS", r[r.REQUEST_HEADER_FIELDS_TOO_LARGE = 431] = "REQUEST_HEADER_FIELDS_TOO_LARGE", r[r.UNAVAILABLE_FOR_LEGAL_REASONS = 451] = "UNAVAILABLE_FOR_LEGAL_REASONS", r[r.INTERNAL_SERVER_ERROR = 500] = "INTERNAL_SERVER_ERROR", r[r.NOT_IMPLEMENTED = 501] = "NOT_IMPLEMENTED", r[r.BAD_GATEWAY = 502] = "BAD_GATEWAY", r[r.SERVICE_UNAVAILABLE = 503] = "SERVICE_UNAVAILABLE", r[r.GATEWAY_TIMEOUT = 504] = "GATEWAY_TIMEOUT", r[r.HTTP_VERSION_NOT_SUPPORTED = 505] = "HTTP_VERSION_NOT_SUPPORTED", r[r.VARIANT_ALSO_NEGOTIATES = 506] = "VARIANT_ALSO_NEGOTIATES", r[r.INSUFFICIENT_STORAGE = 507] = "INSUFFICIENT_STORAGE", r[r.LOOP_DETECTED = 508] = "LOOP_DETECTED", r[r.NOT_EXTENDED = 510] = "NOT_EXTENDED", r[r.NETWORK_AUTHENTICATION_REQUIRED = 511] = "NETWORK_AUTHENTICATION_REQUIRED", r))(P || {});
class ii {
  constructor(e = "http", n = "localhost", t = 1) {
    h(this, "Protocol");
    h(this, "Hostname");
    h(this, "Port");
    this.Protocol = e, this.Hostname = n, this.Port = t;
  }
  getUrl() {
    return this.Protocol + "://" + this.Hostname + ":" + this.Port;
  }
  overtakeFromWindowLocation() {
    this.Hostname = window.location.hostname, this.Port = +window.location.port;
  }
}
const ai = [
  "NodeId",
  "NodeClass",
  "BrowseName",
  "DisplayName",
  "Description",
  "WriteMask",
  "UserWriteMask",
  "IsAbstract",
  "Symmetric",
  "InverseName",
  "ContainsNoLoops",
  "EventNotifier",
  "Value",
  "DataType",
  "ValueRank",
  "ArrayDimensions",
  "AccessLevel",
  "UserAccessLevel",
  "MinimumSamplingInterval",
  "Historizing",
  "Executable",
  "UserExecutable"
];
function kr(r) {
  return ai.includes(r);
}
class L {
  constructor(e, n, t) {
    h(this, "NodeId");
    h(this, "Status");
    h(this, "Value", null);
    h(this, "RawValue", null);
    if (this.NodeId = e, this.Status = n, typeof t < "u")
      if (this.RawValue = t, t == "True") this.Value = !0;
      else if (t == "False") this.Value = !1;
      else if (typeof t == "string")
        try {
          this.Value = JSON.parse(t);
        } catch {
          this.Value = t;
        }
      else this.Value = t;
  }
}
class q {
  constructor(e, n, t) {
    h(this, "RequestData");
    h(this, "Status");
    h(this, "Values", []);
    this.RequestData = e, this.Status = n, this.Values = t;
  }
}
class z {
  constructor(e, n, t) {
    h(this, "RequestData");
    h(this, "Status");
    h(this, "Statuses", []);
    this.RequestData = e, this.Status = n, this.Statuses = t;
  }
}
class be {
  constructor(e, n, t) {
    h(this, "NodeId");
    h(this, "Status");
    h(this, "Value");
    this.NodeId = e, this.Status = n, this.Value = t;
  }
}
class K {
  constructor(e, n, t, o) {
    h(this, "NodeId");
    h(this, "Method");
    h(this, "Status");
    h(this, "Output");
    this.NodeId = e, this.Method = n, this.Status = t, this.Output = o;
  }
}
class Qr {
  constructor(e, n = "InputArguments", t) {
    h(this, "NodeId");
    h(this, "Status", y.UNKNOWN);
    h(this, "ArgType");
    h(this, "Arguments");
    this.NodeId = e, this.ArgType = n, this.Arguments = t;
  }
}
class Je {
  constructor(e, n, t) {
    h(this, "Uri");
    h(this, "Status");
    h(this, "Index");
    this.Uri = e, this.Status = n, this.Index = t;
  }
}
function yr(r, e = "", n = !0) {
  if (typeof window > "u")
    return "";
  const t = window.localStorage.getItem(r);
  return t || (n && window.localStorage.setItem(r, e), "");
}
const dr = "mappMotion:log";
function si(r) {
  return `${dr}:${r}:level`;
}
function ci(r, e = 0) {
  return +yr(si(r), "" + e);
}
var u = /* @__PURE__ */ ((r) => (r.None = "", r.Connection = "Connection", r.Namespace = "Namespace", r.Read = "Read", r.Write = "Write", r.DataType = "DataType", r.Method = "Method", r.Subscription = "Subscription", r))(u || {});
function li() {
  return `${dr}:filter`;
}
function fi() {
  return yr(li()).trim();
}
function Me(r) {
  const n = fi().split(",");
  for (const t in n)
    if (n[t].trim() == r)
      return !0;
  return !1;
}
function ui(r, e, n, t, o, i) {
  const a = ci(r);
  return a > 99 ? !0 : i ? !1 : !!(a > o && Me(t) || a > n && Me(e));
}
function pi(r, e, n, t, o) {
  const i = di();
  return i > 99 ? !0 : o ? !1 : !!(i > t && Me(n) || i > e && Me(r));
}
function yi() {
  return `${dr}:timing`;
}
function di() {
  return +yr(yi(), "0");
}
function gi(r) {
  return new Promise((e) => setTimeout(e, r));
}
function Ze(r, e, n = 5) {
  return "ns=" + n + ";s=" + r + "." + e;
}
function Ei() {
  let r = "";
  try {
    typeof document < "u" ? r = document.location.protocol : typeof self < "u" && (r = self.location.protocol);
  } catch (e) {
    console.error("GetProtocol exception:", e);
  }
  switch (r) {
    case "http:":
      return "http";
    case "https:":
      return "https";
  }
  return "opc.tcp";
}
function hi() {
  let r = "localhost";
  try {
    typeof document < "u" ? r = document.location.hostname : typeof self < "u" && (r = self.location.hostname);
  } catch (e) {
    console.error("GetHostName exception:", e);
  }
  return r;
}
function Ri() {
  try {
    let r = new URLSearchParams();
    typeof document < "u" && (document.location.hash && document.location.hash.length ? r = new URLSearchParams(document.location.hash.replace("#", "")) : document.location.search && document.location.search.length && (r = new URLSearchParams(document.location.search.replace("?", ""))));
    const e = r.get("Port");
    if (e != null)
      return +e;
  } catch (r) {
    console.error("GetPort exception:", r);
  }
  return typeof document < "u" ? (console.debug("GetPort document.location.port=", document.location.port), +document.location.port) : typeof self < "u" ? (console.debug("GetPort self.location.port=", self.location.port), +self.location.port) : (console.warn("GetPort: default Port used 8084"), 8084);
}
let vi = "0";
function Oi() {
  return +vi;
}
function mi(r) {
  return (r == null ? void 0 : r.getConnectionState()) === "Connected";
}
const b = "OpcUaBase", he = -99, Re = "http://br-automation.com/OpcUa/PLC/SoftwareComponents/";
function d(r, e = 0, n = u.None, t = 10, o) {
  return ui("OpcUaApi", n, t, r, e, o);
}
function S(r, e = 0, n, t = 10, o) {
  return pi(n, t, r, e, o);
}
const m = class m {
  constructor() {
    //Connection ===================================================================================
    h(this, "ConnectionState", "undefined");
    h(this, "onConnectionChange");
    //Pinging --------------------------------------------------------------------------------------
    h(this, "pingIntervalId", null);
    //Namespace ====================================================================================
    h(this, "NamespaceIdx", he);
  }
  getConnectionState() {
    return this.ConnectionState;
  }
  resetConnectionState() {
    this.setConnectionState("undefined");
  }
  async setConnectionState(e, n) {
    const t = "setConnectionState", o = `${b}.${t}(${e}, ${n})`;
    d(t, 1, u.Connection, 10) && console.debug(o + "...");
    const i = this.ConnectionState;
    d(t, 0, u.Connection) && console.debug(`${o} previous=${i}`), e == "Connected" && i != "Connected" && this.NamespaceIdx == he && (d(t, 0, u.Connection, 0) && console.debug(o + " > retrieveNamespaceIndex"), await this.retrieveNamespaceIndex()), this.ConnectionState = e, this.onConnectionChange && this.onConnectionChange(i, e, n);
  }
  async pingHandling() {
    const e = await this.ping();
    if (d("ping", 0, u.Connection) && console.debug(`${b} > ping=${e}`), e == Yr.RECONNECTING) {
      await this.setConnectionState("Connected"), this.restartSubscriptions();
      return;
    }
    e == y.OK ? this.ConnectionState != "Connected" : (this.ConnectionState != "Unpingable" && console.warn(`${b} > unpingable : ${e}`), await this.setConnectionState("Unpingable"));
  }
  startPinging(e = 2) {
    d("ping", 0, u.Connection) && console.debug(`OpcUaBase.startPinging(${e})`);
    const n = this;
    this.pingIntervalId = window.setInterval(async () => {
      await n.pingHandling();
    }, e * 1e3);
  }
  stopPinging() {
    d("ping", 0, u.Connection) && console.debug("OpcUaBase.stopPinging()", this.pingIntervalId), this.pingIntervalId && window.clearInterval(this.pingIntervalId);
  }
  setNamespaceIdx(e) {
    this.NamespaceIdx = e;
  }
  getNamespaceIdx() {
    return this.NamespaceIdx === he && console.error("OpcUaBaseClass.getNamespaceIdx() namespace index not set!"), this.NamespaceIdx;
  }
  getNodeId(e, n) {
    return Ze(e, n, this.getNamespaceIdx());
  }
  getNodeIds(e, n) {
    const t = [];
    for (const o in n) {
      const i = n[o];
      t.push(this.getNodeId(e, i));
    }
    return t;
  }
  async read(e, n, t) {
    const o = "read", i = `${b}.${o}(${e}, ${n}, ${t} )`;
    if (d(o, 2, u.Read, 3, t) && console.debug(i + "..."), S(o, 0, u.Read, 10, t) && console.time(i), typeof e != "string" || typeof n != "string")
      return console.error(i + " > invalid argument(s)"), new L(e, y.ERROR_PARAMETER);
    if (this.getConnectionState() != "Connected")
      return console.error(i + " > no Connection"), new L(e, y.ERROR_NO_CONNECTION);
    let a;
    try {
      a = await this.read_single(e, n, t), d(o, 0, u.Read, 2, t) && console.debug(i + " = ", a);
    } catch (c) {
      return console.error(i, c), new L(e, y.ERROR);
    }
    return S(o, 0, u.Read, 10, t) && console.timeEnd(i), a;
  }
  async readAttribute(e, n, t, o, i) {
    const a = "readAttribute", c = `${b}.${a}(${e}, ${n}, ${t}, ${o}, ${i} )`;
    if (d(a, 1, u.Read, 1, i) && console.debug(c + "..."), S(a, 0, u.Read, 10, i) && console.time(c), typeof e != "string" || typeof n != "string" || typeof t != "string" || !kr(t))
      return console.error(c + " invalid argument(s)"), new L("", y.ERROR_PARAMETER);
    if (this.getConnectionState() != "Connected")
      return console.error(c + " > no Connection"), new L("", y.ERROR_NO_CONNECTION);
    if (o || (o = this.getNamespaceIdx()), o == he)
      return console.error(c + " > invalid Namespace index"), new L("", y.ERROR_NO_CONNECTION);
    const s = Ze(e, n, o), l = await this.read(s, t, i);
    return d(a, 0, u.Read, 0, i) && console.debug(c + " = ", l), S(a, 0, u.Read, 10, i) && console.timeEnd(c), l;
  }
  async readValue(e, n, t, o) {
    return await this.readAttribute(e, n, "Value", t, o);
  }
  async write(e, n, t, o) {
    const i = "write", a = `${b}.${i}(${e}, ${n}, ${t} )`;
    if (d(i, 2, u.Write, 3, o) && console.debug(a + "..."), S(i, 0, u.Write, 10, o) && console.time(a), typeof e != "string" || typeof n != "string" || typeof t != "string" && typeof t != "number")
      return console.error(a + " > invalid argument(s)"), y.ERROR_PARAMETER;
    if (this.getConnectionState() != "Connected")
      return console.error(a + " > no Connection"), y.ERROR_NO_CONNECTION;
    let c;
    try {
      c = await this.write_single(e, n, t, o), d(i, 0, u.Write, 2, o) && console.debug(a + " = ", c);
    } catch (s) {
      return console.error(a, s), y.ERROR;
    }
    return S(i, 0, u.Write, 10, o) && console.timeEnd(a), c;
  }
  async writeAttribute(e, n, t, o, i, a) {
    const c = "writeAttribute", s = `${b}.${c}(${e}, ${n}, ${t}, ${o}, ${i}, ${a} )`;
    if (d(c, 1, u.Write, 1, a) && console.debug(s + "..."), S(c, 0, u.Write, 10, a) && console.time(s), typeof e != "string" || typeof n != "string" || typeof t != "string" || !kr(t) || typeof o != "string" && typeof o != "number")
      return console.error(s + " invalid argument(s)"), y.ERROR_PARAMETER;
    if (this.getConnectionState() != "Connected")
      return console.error(s + " > no Connection"), y.ERROR_NO_CONNECTION;
    if (i || (i = this.getNamespaceIdx()), i == he)
      return console.error(s + " > invalid Namespace index"), y.ERROR_NO_CONNECTION;
    const l = Ze(e, n, i), f = await this.write(l, t, o, a);
    return d(c, 0, u.Write, 0, a) && console.debug(s + " = ", f), S(c, 0, u.Write, 10, a) && console.timeEnd(s), f;
  }
  async writeValue(e, n, t, o, i) {
    return await this.writeAttribute(e, n, "Value", t, o, i);
  }
  async readMultiple(e, n) {
    const t = "readMultiple", o = `${b}.${t}`;
    if (d(t, 2, u.Read, 1, n) && console.debug(o + "..."), S(t, 0, u.Read, 0, n) && console.time(o), !e || typeof e != "object" || !Array.isArray(e) || e.length == 0)
      return console.error(o + " > invalid data argument", e), new q(e, y.ERROR_PARAMETER);
    for (let a = 0; a < e.length; ++a)
      if (typeof e[a].NodeId != "string" || typeof e[a].Attribute != "string")
        return console.error(o + ` > invalid array item [${a}]`), new q(e, y.ERROR_PARAMETER);
    if (this.getConnectionState() != "Connected")
      return console.error(o + " > no Connection"), new q(e, y.ERROR_NO_CONNECTION);
    let i;
    try {
      i = await this.read_multiple(e, n), d(t, 0, u.Read, 0, n) && console.debug(o + "(", e, ") = ", i);
    } catch (a) {
      return console.error(o, a), new q(e, y.ERROR);
    }
    return S(t, 0, u.Read, 10, n) && console.timeEnd(o), i;
  }
  async writeMultiple(e, n) {
    const t = "writeMultiple", o = `${b}.${t}`;
    if (d(t, 2, u.Write, 1, n) && console.debug(o + "..."), S(t, 0, u.Write, 0, n) && console.time(o), !e || typeof e != "object" || !Array.isArray(e) || e.length == 0)
      return console.error(o + " > invalid data argument", e), new z(e, y.ERROR_PARAMETER);
    for (let a = 0; a < e.length; ++a)
      if (typeof e[a].NodeId != "string" || typeof e[a].Attribute != "string" || typeof e[a].Value != "string" && typeof e[a].Value != "number")
        return console.error(o + ` > invalid array item [${a}]`), new z(e, y.ERROR_PARAMETER);
    if (this.getConnectionState() != "Connected")
      return console.error(o + " > no Connection"), new z(e, y.ERROR_NO_CONNECTION);
    let i;
    try {
      i = await this.write_multiple(e, n), d(t, 0, u.Write, 0, n) && console.debug(o + "(", e, ") = ", i);
    } catch (a) {
      return console.error(o, a), new z(e, y.ERROR);
    }
    return S(t, 0, u.Write, 10, n) && console.timeEnd(o), i;
  }
  //DataTypes ====================================================================================
  async readDataType(e, n) {
    const t = "readDataType", o = `${b}.${t}(${e}, ${n} )`;
    if (d(t, 1, u.DataType, 1, n) && console.debug(o + "..."), S(t, 0, u.DataType, 1, n) && console.time(o), !e || typeof e != "string")
      return console.error(o + " invalid argument(s)"), new be("", y.ERROR_PARAMETER, null);
    if ((e == null ? void 0 : e.indexOf("i=")) != -1) {
      const i = await this.read(e, "DisplayName", n);
      return d(t, 0, u.DataType, 0, n) && console.log(o + "> build-in DisplayName=", i), S(t, 0, u.DataType, 1, n) && console.timeEnd(o), new be(e, i.Status, i.Value);
    } else {
      const i = await this.read(e + ".EnumValues", "Value", n);
      return d(t, 0, u.DataType, 0, n) && console.log(o + "> enum=", i), S(t, 0, u.DataType, 1, n) && console.timeEnd(o), new be(
        e,
        i.Status,
        i.Value
      );
    }
  }
  async readValueDataType(e, n, t, o) {
    const i = "readValueDataType", a = `${b}.${i}(${e}, ${n}, ${t}, ${o} )`;
    d(i, 2, u.DataType, 2, o) && console.debug(a + "..."), S(i, 0, u.DataType, 1, o) && console.time(a);
    const c = await this.readAttribute(e, n, "DataType", t, o);
    if (d(i, 1, u.DataType, 1, o) && console.debug(a + "> read=", c), c.Status !== y.OK)
      return new be("", c.Status, null);
    const s = await this.readDataType(c.Value, o);
    return d(i, 1, u.DataType, 1, o) && console.log(a + " = ", s), S(i, 0, u.DataType, 1, o) && console.timeEnd(a), s;
  }
  async call(e, n, t, o) {
    const i = "call", a = `${b}.${i}(${e}, ${n}, ..., ${o} )`;
    if (d(i, 2, u.Method, 3, o) && console.debug(a + "...", t), typeof e != "string" || typeof n != "string")
      return console.error(a + "> invalid nodeId or methodId argument!"), new K(e, n, y.ERROR_PARAMETER);
    if (typeof t < "u" && (typeof t != "object" || t == null || Array.isArray(t)))
      return console.error(a + "> invalid arguments", t), new K(e, n, y.ERROR_PARAMETER);
    if (this.getConnectionState() != "Connected")
      return console.error(a + " no Connection"), new K(e, n, y.ERROR_NO_CONNECTION);
    let c;
    try {
      c = await this.call_method(e, n, t, o), d(i, 0, u.Method, 2, o) && console.debug(a + " args=", t, " = ", c);
    } catch (s) {
      return console.error(a, s), new K(e, n, y.ERROR);
    }
    return c;
  }
  async callMethod(e, n, t, o, i = "MethodSet") {
    const a = "callMethod", c = `${b}.${a}(${e}, ${n}, ... , ${o}, ${i} )`;
    if (d(a, 1, u.Method, 1, o) && console.debug(c + "..."), S(a, 0, u.Method, 1, o) && console.time(c), typeof e != "string" || typeof n != "string" || typeof i != "string")
      return console.error(c + " invalid argument(s)"), new K(
        this.getNodeId(e, i),
        this.getNodeId(e, n),
        y.ERROR_PARAMETER
      );
    const s = await this.call(
      this.getNodeId(e, i),
      this.getNodeId(e, n),
      t,
      o
    );
    return d(a, 0, u.Method, 0, o) && console.debug(c + " = ", s), S(a, 0, u.Method, 0, o) && console.timeEnd(c), s;
  }
  async readMethodArguments(e, n = "InputArguments", t) {
    const o = "readMethodArguments", i = `${b}.${o}(${e}, ${n}, ${t} )`;
    if (d(o, 1, u.Method, 10, t) && console.debug(i + "..."), S(o, 0, u.Method, 10, t) && console.time(i), !e || typeof e != "string" || !n || typeof n != "string") {
      console.error(i + " invalid argument(s)");
      const l = new Qr(e, n);
      return l.Status = y.ERROR_PARAMETER, l;
    }
    const a = e + "#" + n, c = new Qr(a, n), s = await this.read(a, "Value", t);
    return c.Status = s.Status, c.Status = s.Status, c.Arguments = s.Value, d(o, 0, u.Method, 10, t) && console.debug(i + " = ", c), S(o, 0, u.Method, 10, t) && console.timeEnd(i), c;
  }
  static StartSubscriptionPolling(e) {
    e.Timer = window.setInterval(function() {
      m.HandleSubscription(e);
    }, e.Interval), e.Aborted = !1;
  }
  static AbortSubscriptionPolling(e) {
    const n = "AbortSubscriptionPolling", t = `${b}.${n}(...)`;
    d(n, 1, u.Subscription, 10) && console.debug(t + "...", e), clearInterval(e.Timer), e.Aborted = !0, e.CallBack && (d(n, 0, u.Subscription, 10) && console.debug(t + " send callback...", e), e.CallBack(/* @__PURE__ */ new Map(), -1));
  }
  static async SinglePollSubscriptionValues(e) {
    var a, c, s;
    if (e === void 0) return !1;
    let n = 0, t = 0;
    const o = /* @__PURE__ */ new Map(), i = /* @__PURE__ */ new Date();
    for (const l in e.Nodes) {
      const f = e.Nodes[l], g = await ((a = m.Instance) == null ? void 0 : a.read(f.NodeId, f.Attribute, !0));
      if (!g || (g == null ? void 0 : g.Status) != y.OK) {
        t++;
        continue;
      }
      const p = g == null ? void 0 : g.Value;
      ((c = e.Data) == null ? void 0 : c.get(f)) != p && ((s = e.Data) == null || s.set(f, p), o.set(f, p), n++);
    }
    if (n && e.CallBack) {
      const f = (/* @__PURE__ */ new Date()).valueOf() - i.valueOf();
      e.CallBack(o, f);
    }
    return t === 0;
  }
  static async MultiplePollSubscriptionValues(e) {
    var a, c, s;
    if (e === void 0) return !1;
    let n = 0;
    const t = /* @__PURE__ */ new Map(), o = /* @__PURE__ */ new Date(), i = await ((a = m.Instance) == null ? void 0 : a.readMultiple(e.Nodes, !0));
    if (i == null)
      return console.error("OpcUaApi.multiplePollSubscriptionValues-readMultiple returned null"), !1;
    if (i.Status != y.OK)
      return console.error(
        "OpcUaApi.multiplePollSubscriptionValues-readMultiple Status is",
        i.Status
      ), !1;
    for (const l in i.Values) {
      const f = parseInt(l), g = i.RequestData[f], p = i.Values ? i.Values[f] : null;
      ((c = e.Data) == null ? void 0 : c.get(g)) != p && ((s = e.Data) == null || s.set(g, p), t.set(g, p), n++);
    }
    if (n && e.CallBack) {
      const f = (/* @__PURE__ */ new Date()).valueOf() - o.valueOf();
      e.CallBack(t, f);
    }
    return !0;
  }
  static async HandleSubscription(e) {
    const n = "HandleSubscription", t = `${b}.${n}(...)`;
    if (m.SubscriptionActive && !e.Aborted) {
      clearInterval(e.Timer), m.StartSubscriptionPolling(e);
      return;
    }
    if (e.Aborted) return;
    if (m.SubscriptionActive = !0, !m.Instance || !mi(m.Instance)) {
      d(n, 1, u.Subscription, 10) && console.debug(t + "-no Instance or no Connection abort polling"), m.AbortSubscriptionPolling(e), m.SubscriptionActive = !1;
      return;
    }
    S(n, 10, u.Subscription, 10) && console.time(t);
    let o = !1;
    e.Mode == "Single Polling" ? o = await m.SinglePollSubscriptionValues(e) : o = await m.MultiplePollSubscriptionValues(e), o == !1 && (d(n, 1, u.Subscription, 10) && console.info(
      t + "-polling call failed, abort subscription polling!",
      e
    ), m.AbortSubscriptionPolling(e)), S(n, 10, u.Subscription, 10) && console.timeEnd(t), m.SubscriptionActive = !1;
  }
  //Public ---------------------------------------------------------------------------------------
  async createSubscription(e, n, t, o) {
    const i = "createSubscription", a = `${b}.${i}([], (), ${t}, ${o} )`;
    if (d(i, 1, u.Subscription, 10) && console.debug(a + "...", e), S(i, 0, u.Subscription) && console.time(a), !e || typeof e != "object" || !Array.isArray(e) || e.length == 0)
      return console.error(a + " > invalid nodes", e), 0;
    if (typeof t != "number" || typeof o != "string" || typeof n != "function")
      return console.error(a + " > invalid argument(s)", e, t, o), 0;
    if (t == 1 / 0)
      return console.error(a + " > invalid interval", t), 0;
    if (!vn(o))
      return console.error(a + " > invalid subscription mode", o), 0;
    const c = {
      Nodes: e,
      Interval: t,
      CallBack: n,
      Mode: o,
      Data: /* @__PURE__ */ new Map()
    };
    let s = 0;
    if (o == "Single Polling" || o == "Multiple Polling")
      await m.HandleSubscription(c), m.StartSubscriptionPolling(c), s = ++m.SubscriptionIndex, m.Subscriptions.set(s, c);
    else if (o == "Monitoring") {
      const l = await this.create_subscription(e, n, t);
      l > 0 ? (s = ++m.SubscriptionIndex, c.RemoteId = l, m.Subscriptions.set(s, c)) : d(i, 1, u.Subscription, 10) && console.error(a + " > create_subscription ret=", l);
    } else
      return console.error(a + " > invalid mode=", o), 0;
    return d(i, 0, u.Subscription) && console.debug(a + " = ", s), S(i, 0, u.Subscription) && console.timeEnd(a), s;
  }
  async deleteSubscription(e) {
    const n = "deleteSubscription", t = `${b}.${n}(${e})`;
    if (d(n, 1, u.Subscription, 10) && console.debug(t + "..."), S(n, 0, u.Subscription) && console.time(t), !m.Subscriptions.has(e))
      return console.error(t + " invalid id", e), !1;
    const o = m.Subscriptions.get(e);
    return (o == null ? void 0 : o.Mode) == "Single Polling" || (o == null ? void 0 : o.Mode) == "Multiple Polling" ? clearInterval(o == null ? void 0 : o.Timer) : (o == null ? void 0 : o.Mode) == "Monitoring" && (this.delete_subscription(e) || console.error(t + " delete_subscription failed")), m.Subscriptions.delete(e), d(n, 0, u.Subscription) && console.debug(t + " deletedId = ", e), S(n, 0, u.Subscription) && console.timeEnd(t), !0;
  }
  async restartSubscriptions() {
    const e = "restartSubscriptions", n = `${b}.${e}(})`;
    d(e, 1, u.Subscription, 10) && console.debug(n, m.Subscriptions), S(e, 0, u.Subscription) && console.time(n);
    for (const [, t] of m.Subscriptions)
      m.StartSubscriptionPolling(t), await gi(10);
    S(e, 0, u.Subscription) && console.timeEnd(n);
  }
};
//Class Instance ===============================================================================
h(m, "Instance", null), //TODO MAM Implement Call Multiple?
/*
    protected abstract call_multiple(
        nodeId: string,
        methodId: string,
        args?: ArgsType,
        muted?: boolean,
    ): Promise<CallReturnType[]>;
    public async callMultiple(
        nodeId: string,
        methodId: string,
        args?: ArgsType,
        muted?: boolean,
    ): Promise<CallReturnType[]> {
        const funName = "callMultiple";
        const funStr = `${ClassName}.${funName}(${nodeId}, ${methodId}, ..., ${muted} )`;

        if (isLoggingEnabled(funName, 2, LogCategory.Method, 3, muted))
            console.debug(funStr + "...", args);

        if (typeof nodeId != "string" || typeof methodId != "string") {
            console.error(funStr + `> invalid nodeId or methodId argument!`);
            return new CallReturnType(nodeId, methodId, StatusCode.ERROR_PARAMETER);
        }
        if (
            typeof args != "undefined" &&
            (typeof args != "object" || args == null || Array.isArray(args))
        ) {
            console.error(funStr + `> invalid arguments`, args);
            return new CallReturnType(nodeId, methodId, StatusCode.ERROR_PARAMETER);
        }

        if (this.getConnectionState() != "Connected") {
            console.error(funStr + " no Connection");
            return new CallReturnType(nodeId, methodId, StatusCode.ERROR_NO_CONNECTION);
        }

        let callRet;
        try {
            callRet = await this.call_method(nodeId, methodId, args, muted);
            if (isLoggingEnabled(funName, 0, LogCategory.Method, 2, muted))
                console.debug(funStr + " args=", args, " = ", callRet);
        } catch (error) {
            console.error(funStr, error);
            return new CallReturnType(nodeId, methodId, StatusCode.ERROR);
        }
        return callRet;
    }
*/
//Subscriptions ================================================================================
//Private --------------------------------------------------------------------------------------
h(m, "SubscriptionIndex", 0), h(m, "Subscriptions", /* @__PURE__ */ new Map()), h(m, "SubscriptionActive", !1);
let M = m, U;
const x = "OpcUa-REST";
class gr extends M {
  //Constructor/Initialization -------------------------------------------------------------------
  constructor() {
    super();
    //Private Members ------------------------------------------------------------------------------
    h(this, "SessionId", 0);
    h(this, "LocalIp", "");
  }
  //Singleton ------------------------------------------------------------------------------------
  static async getInstance(n = "http", t = "localhost", o = 8084, i = 0, a = "/api/1.0") {
    if (!M.Instance) {
      const c = new gr();
      M.Instance = c, await c.initialize(i, o, n, t, a);
    }
    return M.Instance;
  }
  static resetInstance() {
    M.Instance && (d("resetInstance") && console.debug("OpcUaRestClass.resetInstance"), M.Instance.getConnectionState() == "Connected" && M.Instance.disconnect(), M.Instance.resetConnectionState(), M.Instance.SessionId = 0, M.Instance.LocalIp = "", M.Instance = null);
  }
  async initialize(n, t, o, i, a) {
    const c = "initialize", s = `${x}.${c}(${n}, ${t}, ${o}, ${i}, ${a})`;
    d(c) && console.warn(s, t, o, i, a), await this.setConnectionState("uninitialized"), U = Xo(t, o, i, a), await this.setConnectionState("initialized");
    const l = await this.updateLocalIp();
    if (l != y.OK)
      return console.error(s + "-ipResponse bad response", l), l;
    if (n == 0) {
      d(c) && console.debug(s + "-create new Session");
      const f = await this.auth();
      if (f != y.OK)
        return f;
    } else
      d(c) && console.debug(s + "-reuse Session"), this.setSessionId(n), await this.setConnectionState("Connected");
    return y.OK;
  }
  //Helper/Others ================================================================================
  async auth() {
    const n = "auth", t = `${x}.${n}`;
    d(n, 1, u.Connection, 10) && console.debug(`${t}...`);
    let o;
    try {
      o = await U[Jo].get(), d(n, 0, u.Connection) && console.debug(t + " = ", o, o.status);
    } catch (i) {
      return console.error(t, i), y.ERROR_FETS;
    }
    return o.status == P.NO_CONTENT ? y.OK : (console.error(t + "-failed to authenticate"), y.ERROR_BAD_RESPONSE);
  }
  async ping() {
    const n = "ping", t = `${x}.${n}`;
    d(n, 2, u.Connection, 10) && console.debug(`${t}...`);
    let o;
    try {
      o = await U[Zo].get(), d(n, 1, u.Connection, 10) && console.debug(t + " >", o, o.status);
    } catch (i) {
      return console.error(t, i), y.ERROR_FETS;
    }
    if (o.status == P.NO_CONTENT) {
      const i = Oi();
      return d(n, 1, u.Connection, 10) && console.debug(t + " > SessionID=", i), this.getConnectionState() == "Unpingable" ? y.PROCESSING : y.OK;
    }
    return console.error(t + "-failed to ping"), y.ERROR_BAD_RESPONSE;
  }
  async updateLocalIp() {
    const n = "updateLocalIp", t = `${x}.${n}`;
    d(n, 2, u.Connection, 10) && console.debug(`${t}...`);
    let o;
    try {
      o = await U[Ho].get(), d(n, 1, u.Connection, 10) && console.debug(`${t} response=`, o);
    } catch (i) {
      return console.error(t, i), y.ERROR_FETS;
    }
    if (o.status == P.OK) {
      const i = await o.json();
      return d(n, 0, u.Connection) && console.debug(t + " = ", i), this.setLocalIp(i.ip), y.OK;
    }
    return console.error(t + "-failed to updateLocalIp"), y.ERROR_BAD_RESPONSE;
  }
  setLocalIp(n) {
    this.LocalIp = n;
  }
  getLocalIp() {
    return this.LocalIp;
  }
  //Namespace ====================================================================================
  async retrieveNamespaceIndex() {
    const n = "retrieveNamespaceIndex", t = `${x}.${n}`;
    d(n, 1, u.Namespace, 1) && console.debug(t + "...");
    const o = {
      params: {
        sessionId: +this.SessionId,
        namespaceUri: encodeURIComponent(Re)
      }
    };
    let i;
    try {
      d(n, 2, u.Namespace, 2) && console.debug(t + ">", Kr, o, Re), i = await U[Kr].get(o), d(n, 1, u.Namespace, 1) && console.debug(`${t} response=`, i);
    } catch (a) {
      return console.error(t, a), new Je(Re, y.ERROR_FETS, -1);
    }
    if (i.status == P.OK) {
      const a = await i.json();
      return d(n, 0, u.Namespace, 0) && console.debug(t + " = ", a), this.setNamespaceIdx(a.index), new Je(Re, y.OK, a.index);
    }
    return this.setNamespaceIdx(5), console.error(t + "-failed"), new Je(Re, y.ERROR_BAD_RESPONSE, -2);
  }
  //Connection ===================================================================================
  setSessionId(n) {
    this.SessionId = n;
  }
  getSessionId() {
    return this.SessionId ? this.SessionId : 0;
  }
  isValidSession() {
    return typeof this.SessionId == "number" && this.SessionId > 0;
  }
  async connect(n = "Anonymous", t = "") {
    var l, f;
    const o = "connect", i = `${x}.${o}(${n}, ...)`;
    if (d(o, 2, u.Connection, 10) && console.debug(i + "..."), S(o, 0, u.Connection) && console.time(i), this.getConnectionState() == "connecting")
      return d(o, 1, u.Connection, 10) && console.warn(i + "-already trying to connect"), y.PROCESSING;
    if (this.getConnectionState() == "Connected")
      return d(o, 1, u.Connection, 10) && console.warn(i + "-already connected"), y.OK;
    if (this.LocalIp == "")
      return d(o, 1, u.Connection, 10) && console.warn(i + "-LocalIp not set"), y.ERROR_PARAMETER;
    if (this.SessionId != null && this.SessionId > 0)
      return console.error(i + "-Session already set ", this.getConnectionState()), y.ERROR_PARAMETER;
    await this.setConnectionState("connecting");
    const c = {
      json: {
        url: new ii("opc.tcp", this.LocalIp, 4840).getUrl(),
        timeout: 3e4,
        userIdentityToken: {
          username: n,
          password: t
        }
      }
    };
    let s;
    try {
      s = await U[ei].post(c), d(o, 1, u.Connection, 10) && console.debug(`${i} response=`, s);
    } catch (g) {
      return await this.setConnectionState("Error"), console.error(i, g), y.ERROR_FETS;
    }
    if (s.status == P.CREATED) {
      const g = await s.json();
      return d(o, 1, u.Connection, 10) && console.debug(`${i} =`, g), this.setSessionId(+g.id), ((l = g.status) == null ? void 0 : l.string) == "Good" ? (await this.setConnectionState("Connected"), S(o, 0, u.Connection) && console.timeEnd(i), y.OK) : (await this.setConnectionState("Error"), console.error(i + "-failed to connect because:", (f = g.status) == null ? void 0 : f.string), y.ERROR_BAD_CONNECTION_CLOSED);
    }
    return await this.setConnectionState("Error"), console.error(i + "-failed to connect", s), y.ERROR_BAD_RESPONSE;
  }
  async disconnect() {
    const n = "disconnect", t = `${x}.${n}`;
    if (d(n, 2, u.Connection, 10) && console.debug(t + "..."), S(n, 0, u.Connection) && console.time(t), !this.isValidSession())
      return console.error(t + "- invalid Session", this.SessionId), y.ERROR_NO_CONNECTION;
    if (this.getConnectionState() == "disconnecting")
      return d(n, 0, u.Connection) && console.warn(t + "-already trying to disconnect"), y.PROCESSING;
    await this.setConnectionState("disconnecting");
    const o = {
      params: { sessionId: this.SessionId }
    };
    let i;
    try {
      i = await U[ri].delete(o), d(n, 1, u.Connection, 10) && console.debug(t + " response=", i, i.status);
    } catch (a) {
      return console.error(t, a), y.ERROR_FETS;
    }
    return i.status == P.NO_CONTENT ? (this.SessionId = 0, d(n, 0, u.Connection) && console.debug(t + " > disconnected!"), await this.setConnectionState("Disconnected"), y.OK) : (console.error(t + "-failed to disconnect"), y.ERROR_BAD_RESPONSE);
  }
  //Attributes ===================================================================================
  //Read -----------------------------------------------------------------------------------------
  async read_single(n, t, o) {
    const i = "read_single", a = `${x}.${i}(${n}, ${t}, ${o} )`;
    if (d(i, 2, u.Read, 6, o) && console.debug(a + "..."), !this.isValidSession())
      return console.error(a + "- invalid Session", this.SessionId), new L(n, y.ERROR_NO_CONNECTION);
    const c = {
      params: {
        sessionId: this.SessionId,
        nodeId: n.replace("#", "%23"),
        attributeName: t
      }
    };
    let s;
    try {
      s = await U[ni].get(c), d(i, 1, u.Read, 5, o) && console.debug(a + " response=", s, s == null ? void 0 : s.status);
    } catch (l) {
      return console.error(a, l), new L(n, y.ERROR_FETS);
    }
    if ((s == null ? void 0 : s.status) == P.OK) {
      const l = await s.json();
      return d(i, 0, u.Read, 4, o) && console.debug(a + " = ", l), new L(n, y.OK, l.value);
    }
    return s.status == P.NOT_FOUND ? (console.error(a + "- failed, it was not found."), new L(n, y.ERROR_NOT_FOUND, null)) : s.status == P.BAD_REQUEST ? (console.error(a + "- failed, bad request."), new L(n, y.ERROR_NOT_FOUND, null)) : (console.error(a + `-failed, status=${s.status}`), new L(n, y.ERROR_BAD_RESPONSE, null));
  }
  async read_multiple(n, t) {
    const o = "read_multiple", i = `${x}.${o}`;
    if (d(o, 3, u.Read, 1, t) && console.debug(i + "...", n), !this.isValidSession())
      return console.error(i + "- invalid Session", this.SessionId), new q(n, y.ERROR_NO_CONNECTION);
    const a = [];
    for (let l = 0; l < n.length; ++l)
      a[l] = {
        id: (l + 1).toString(),
        method: "GET",
        url: "/" + n[l].NodeId.replace("#", "%23") + "/attributes/" + n[l].Attribute
      };
    const c = {
      params: {
        sessionId: this.SessionId
      },
      json: {
        requests: a
      }
    };
    let s;
    try {
      s = await U["/opcua/sessions/{sessionId}/nodes/$batch"].post(
        c
      ), d(o, 2, u.Read, 4, t) && console.debug(i + " response=", s, s == null ? void 0 : s.status);
    } catch (l) {
      return console.error(i, l), new q(n, y.ERROR_FETS);
    }
    if ((s == null ? void 0 : s.status) == P.OK) {
      const l = await s.json();
      if (l == null || typeof l.responses > "u")
        return new q(n, y.ERROR_FETS);
      d(o, 1, u.Read, 3, t) && console.debug(i + " json=", l);
      const f = new q(n, y.OK);
      f.Values = [];
      for (let g = 0; g < l.responses.length; ++g) {
        const E = l.responses[g].body;
        if (d(o, 3, u.Read, 5, t)) {
          const R = n[g].NodeId, N = n[g].Attribute;
          console.debug(
            `${i} > [${g}]{${R}, ${N}} = `,
            E == null ? void 0 : E.value,
            E
          );
        }
        (E == null ? void 0 : E.value) === void 0 ? f.Values[g] = null : f.Values[g] = E == null ? void 0 : E.value;
      }
      return d(o, 0, u.Read, 2, t) && console.debug(i + "(", n, ") = ", f), f;
    }
    return new q(n, y.ERROR);
  }
  //Write ----------------------------------------------------------------------------------------
  async write_single(n, t, o, i) {
    const a = "write_single", c = `${x}.${a}(${n}, ${t}, ${o} )`;
    if (d(a, 2, u.Write, 6, i) && console.debug(c + "..."), !this.isValidSession())
      return console.error(c + "- invalid Session", this.SessionId), y.ERROR_NO_CONNECTION;
    const s = {
      params: {
        sessionId: this.SessionId,
        nodeId: n.replace("#", "%23"),
        attributeName: t
      },
      json: {
        value: o
      }
    };
    let l;
    try {
      l = await U[oi].put(s), d(a, 1, u.Write, 5, i) && console.debug(c + " response=", l, l == null ? void 0 : l.status);
    } catch (f) {
      return console.error(c, f), y.ERROR;
    }
    if ((l == null ? void 0 : l.status) == P.OK) {
      const f = await l.json();
      return d(a, 0, u.Write, 4, i) && console.debug(c + " = ", f), y.OK;
    }
    return l.status == P.NOT_FOUND ? (console.error(c + "- failed, it was not found."), y.ERROR) : l.status == P.BAD_REQUEST ? (console.error(c + "- failed, bad request."), y.ERROR_BAD_REQUEST) : (console.error(c + `-failed, status=${l.status}`), y.ERROR_BAD_RESPONSE);
  }
  async write_multiple(n, t) {
    var l;
    const o = "write_multiple", i = `${x}.${o}`;
    if (d(o, 3, u.Write, 1, t) && console.debug(i + "...", n), !this.isValidSession())
      return console.error(i + "- invalid Session", this.SessionId), new z(n, y.ERROR_NO_CONNECTION);
    const a = [];
    for (let f = 0; f < n.length; ++f)
      a[f] = {
        id: (f + 1).toString(),
        method: "PUT",
        url: "/" + n[f].NodeId.replace("#", "%23") + "/attributes/" + n[f].Attribute,
        body: {
          // eslint-disable-next-line @typescript-eslint/ban-types
          value: n[f].Value
        },
        headers: {
          "Content-Type": "application/json"
        }
      };
    const c = {
      params: {
        sessionId: this.SessionId
      },
      json: {
        requests: a
      }
    };
    let s;
    try {
      s = await U["/opcua/sessions/{sessionId}/nodes/$batch"].post(
        c
      ), d(o, 2, u.Write, 4, t) && console.debug(i + " response=", s, s == null ? void 0 : s.status);
    } catch (f) {
      return console.error(i, f), new z(n, y.ERROR_FETS);
    }
    if ((s == null ? void 0 : s.status) == P.OK) {
      const f = await s.json();
      if (f == null || typeof f.responses > "u")
        return new z(n, y.ERROR_FETS);
      d(o, 1, u.Write, 3, t) && console.debug(i + " json=", f);
      const g = new z(n, y.OK);
      g.Statuses = [];
      for (let p = 0; p < f.responses.length; ++p) {
        const R = f.responses[p].body, N = n[p].NodeId, I = n[p].Attribute;
        d(o, 3, u.Write, 5, t) && console.debug(`${i} > [${p}]{${N}, ${I}} = `, R), ((l = R == null ? void 0 : R.status) == null ? void 0 : l.string) === "Good" ? g.Statuses[p] = y.OK : (g.Statuses[p] = y.ERROR, console.error(`${i} > [${p}]{${N}, ${I}} = `, R));
      }
      return d(o, 0, u.Write, 2, t) && console.debug(i + "(", n, ") = ", g), g;
    }
    return new z(n, y.ERROR);
  }
  //Methods ======================================================================================
  async call_method(n, t, o, i) {
    const a = "call_method", c = `${x}.${a}(${n}, ${t}, ..., ${i} )`;
    if (d(a, 1, u.Method, 4, i) && console.debug(c + "...", o), !this.isValidSession())
      return console.error(c + "- invalid Session", this.SessionId), new K(n, t, y.ERROR_NO_CONNECTION);
    let s;
    o ? s = {
      params: {
        sessionId: this.SessionId,
        nodeId: n,
        methodId: t
      },
      json: o
    } : s = {
      params: {
        sessionId: this.SessionId,
        nodeId: n,
        methodId: t
      }
    };
    let l;
    try {
      l = await U[ti].post(s), d(a, 3, u.Method, 5, i) && console.debug(c + " > response", l, l.status);
    } catch (f) {
      return console.error(c, f), new K(n, t, y.ERROR_FETS);
    }
    if (l.status == P.OK) {
      const f = await l.json();
      return d(a, 2, u.Method, 5, i) && console.debug(c + " > json", f), f.status.string === "Good" ? new K(n, t, y.OK, f.args) : new K(n, t, y.ERROR, f.status);
    }
    return l.status == P.NOT_FOUND ? (console.error(c + " > not found!"), new K(n, t, y.ERROR_NOT_FOUND)) : new K(n, t, y.ERROR_BAD_RESPONSE, l);
  }
  //Subscriptions ================================================================================
  async create_subscription(n, t, o) {
    return -1;
  }
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  async delete_subscription(n) {
    return !1;
  }
}
const Ni = async (r) => {
  try {
    const e = r.params.components, n = r.params.sessionID, t = parseInt(n), o = await gr.getInstance(
      Ei(),
      hi(),
      Ri(),
      t
    ), i = {
      matchedComponents: []
    }, a = e.map(
      (c) => On(c.componentID, o, i)
    );
    return await Promise.all(a), mn(i);
  } catch (e) {
    return Sn({ message: e.message });
  }
};
export {
  Ni as matchComponent
};
