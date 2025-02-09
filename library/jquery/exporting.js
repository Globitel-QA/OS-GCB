/*
 Highcharts JS v2.1.9 (2011-11-11)
 Exporting module

 (c) 2010-2011 Torstein H?nsi

 License: www.highcharts.com/license
 */
(function() {
	var n = Highcharts, A = n.Chart, B = n.addEvent, E = n.removeEvent, t = n.createElement, w = n.discardElement, u = n.css, x = n.merge, q = n.each, r = n.extend, F = Math.max, s = document, G = window, C = s.documentElement.ontouchstart !== undefined, y = n
			.getOptions();
	r(y.lang, {
		downloadPNG : "Download PNG image",
		downloadJPEG : "Download JPEG image",
		downloadPDF : "Download PDF document",
		downloadSVG : "Download SVG vector image",
		exportButtonTitle : "Export to raster or vector image",
		printButtonTitle : "Print the chart"
	});
	y.navigation = {
		menuStyle : {
			border : "1px solid #A0A0A0",
			background : "#FFFFFF"
		},
		menuItemStyle : {
			padding : "0 5px",
			background : "none",
			color : "#303030",
			fontSize : C ? "14px" : "11px"
		},
		menuItemHoverStyle : {
			background : "#4572A5",
			color : "#FFFFFF"
		},
		buttonOptions : {
			align : "right",
			backgroundColor : {
				linearGradient : [ 0, 0, 0, 20 ],
				stops : [ [ 0.4, "#F7F7F7" ], [ 0.6, "#E3E3E3" ] ]
			},
			borderColor : "#B0B0B0",
			borderRadius : 3,
			borderWidth : 1,
			height : 20,
			hoverBorderColor : "#909090",
			hoverSymbolFill : "#81A7CF",
			hoverSymbolStroke : "#4572A5",
			symbolFill : "#E0E0E0",
			symbolStroke : "#A0A0A0",
			symbolX : 11.5,
			symbolY : 10.5,
			verticalAlign : "top",
			width : 24,
			y : 10
		}
	};
	y.exporting = {
		type : "image/png",
		url : "http://192.168.0.119:8090/ITS/ReportExporter",
		width : 800,
		enableImages : false,
		buttons : {
			exportButton : {
				symbol : "exportIcon",
				x : -10,
				symbolFill : "#A8BF77",
				hoverSymbolFill : "#768F3E",
				_id : "exportButton",
				_titleKey : "exportButtonTitle",
				menuItems : [ {
					textKey : "downloadPNG",
					onclick : function() {
						this.exportChart()
					}
				}, {
					textKey : "downloadJPEG",
					onclick : function() {
						this.exportChart({
							type : "image/jpeg"
						})
					}
				}, {
					textKey : "downloadPDF",
					onclick : function() {
						this.exportChart({
							type : "application/pdf"
						})
					}
				}, {
					textKey : "downloadSVG",
					onclick : function() {
						this.exportChart({
							type : "image/svg+xml"
						})
					}
				} ]
			},
			printButton : {
				symbol : "printIcon",
				x : -36,
				symbolFill : "#B5C9DF",
				hoverSymbolFill : "#779ABF",
				_id : "printButton",
				_titleKey : "printButtonTitle",
				onclick : function() {
					this.print()
				}
			}
		}
	};
	r(
			A.prototype,
			{
				getSVG : function(b) {
					var c = this, a, f, d, k, e, j, h = x(c.options, b);
					if (!s.createElementNS)
						s.createElementNS = function(i, g) {
							var o = s.createElement(g);
							o.getBBox = function() {
								return n.Renderer.prototype.Element.prototype.getBBox
										.apply({
											element : o
										})
							};
							return o
						};
					b = t("div", null, {
						position : "absolute",
						top : "-9999em",
						width : c.chartWidth + "px",
						height : c.chartHeight + "px"
					}, s.body);
					r(h.chart, {
						renderTo : b,
						forExport : true
					});
					h.exporting.enabled = false;
					if (!h.exporting.enableImages)
						h.chart.plotBackgroundImage = null;
					h.series = [];
					q(c.series,
							function(i) {
								d = i.options;
								d.animation = false;
								d.showCheckbox = false;
								d.visible = i.visible;
								if (!h.exporting.enableImages)
									if (d && d.marker
											&& /^url\(/.test(d.marker.symbol))
										d.marker.symbol = "circle";
								d.data = [];
								q(i.data, function(g) {
									k = g.config;
									e = {
										x : g.x,
										y : g.y,
										name : g.name
									};
									typeof k === "object" && g.config
											&& k.constructor !== Array
											&& r(e, k);
									e.visible = g.visible;
									d.data.push(e);
									if (!h.exporting.enableImages)
										(j = g.config && g.config.marker)
												&& /^url\(/.test(j.symbol)
												&& delete j.symbol
								});
								h.series.push(d)
							});
					a = new Highcharts.Chart(h);
					q(
							[ "xAxis", "yAxis" ],
							function(i) {
								q(
										c[i],
										function(g, o) {
											var l = a[i][o], m = g
													.getExtremes(), p = m.userMin;
											m = m.userMax;
											if (p !== void 0 || m !== void 0)
												l
														.setExtremes(p, m,
																true, false)
										})
							});
					f = a.container.innerHTML;
					h = null;
					a.destroy();
					w(b);
					f = f.replace(/zIndex="[^"]+"/g, "").replace(
							/isShadow="[^"]+"/g, "").replace(
							/symbolName="[^"]+"/g, "").replace(
							/jQuery[0-9]+="[^"]+"/g, "").replace(
							/isTracker="[^"]+"/g, "").replace(/url\([^#]+#/g,
							"url(#").replace(/<svg /,
							'<svg xmlns:xlink="http://www.w3.org/1999/xlink" ')
							.replace(/ href=/g, " xlink:href=").replace(
									/&nbsp;/g, "\u00a0").replace(/&shy;/g,
									"\u00ad").replace(/id=([^" >]+)/g,
									'id="$1"').replace(/class=([^" ]+)/g,
									'class="$1"').replace(/ transform /g, " ")
							.replace(/:(path|rect)/g, "$1").replace(
									/<img ([^>]*)>/gi, "<image $1 />").replace(
									/<\/image>/g, "").replace(
									/<image ([^>]*)([^\/])>/gi,
									"<image $1$2 />").replace(/width=(\d+)/g,
									'width="$1"').replace(/height=(\d+)/g,
									'height="$1"').replace(/hc-svg-href="/g,
									'xlink:href="').replace(/style="([^"]+)"/g,
									function(i) {
										return i.toLowerCase()
									});
					f = f.replace(/(url\(#highcharts-[0-9]+)&quot;/g, "$1")
							.replace(/&quot;/g, "'");
					if (f.match(/ xmlns="/g).length === 2)
						f = f.replace(/xmlns="[^"]+"/, "");
					return f
				},
				exportChart : function(b, c) {
					var a, f = this.getSVG(c);
					b = x(this.options.exporting, b);
					a = t("form", {
						method : "post",
						action : b.url
					}, {
						display : "none"
					}, s.body);
					q([ "filename", "type", "width", "svg" ], function(d) {
						t("input", {
							type : "hidden",
							name : d,
							value : {
								filename : b.filename || "chart",
								type : b.type,
								width : b.width,
								svg : f
							}[d]
						}, null, a)
					});
					a.submit();
					w(a)
				},
				print : function() {
					var b = this, c = b.container, a = [], f = c.parentNode, d = s.body, k = d.childNodes;
					if (!b.isPrinting) {
						b.isPrinting = true;
						q(k, function(e, j) {
							if (e.nodeType === 1) {
								a[j] = e.style.display;
								e.style.display = "none"
							}
						});
						d.appendChild(c);
						G.print();
						setTimeout(function() {
							f.appendChild(c);
							q(k, function(e, j) {
								if (e.nodeType === 1)
									e.style.display = a[j]
							});
							b.isPrinting = false
						}, 1E3)
					}
				},
				contextMenu : function(b, c, a, f, d, k) {
					var e = this, j = e.options.navigation, h = j.menuItemStyle, i = e.chartWidth, g = e.chartHeight, o = "cache-"
							+ b, l = e[o], m = F(d, k), p, z;
					if (!l) {
						e[o] = l = t("div", {
							className : "highcharts-" + b
						}, {
							position : "absolute",
							zIndex : 1E3,
							padding : m + "px"
						}, e.container);
						p = t("div", null, r({
							MozBoxShadow : "3px 3px 10px #888",
							WebkitBoxShadow : "3px 3px 10px #888",
							boxShadow : "3px 3px 10px #888"
						}, j.menuStyle), l);
						z = function() {
							u(l, {
								display : "none"
							})
						};
						B(l, "mouseleave", z);
						q(c, function(v) {
							if (v) {
								var D = t("div", {
									onmouseover : function() {
										u(this, j.menuItemHoverStyle)
									},
									onmouseout : function() {
										u(this, h)
									},
									innerHTML : v.text
											|| e.options.lang[v.textKey]
								}, r({
									cursor : "pointer"
								}, h), p);
								D[C ? "ontouchstart" : "onclick"] = function() {
									z();
									v.onclick.apply(e, arguments)
								};
								e.exportDivElements.push(D)
							}
						});
						e.exportDivElements.push(p, l);
						e.exportMenuWidth = l.offsetWidth;
						e.exportMenuHeight = l.offsetHeight
					}
					b = {
						display : "block"
					};
					if (a + e.exportMenuWidth > i)
						b.right = i - a - d - m + "px";
					else
						b.left = a - m + "px";
					if (f + k + e.exportMenuHeight > g)
						b.bottom = g - f - m + "px";
					else
						b.top = f + k - m + "px";
					u(l, b)
				},
				addButton : function(b) {
					function c() {
						g.attr(m);
						i.attr(l)
					}
					var a = this, f = a.renderer, d = x(
							a.options.navigation.buttonOptions, b), k = d.onclick, e = d.menuItems, j = d.width, h = d.height, i, g, o;
					b = d.borderWidth;
					var l = {
						stroke : d.borderColor
					}, m = {
						stroke : d.symbolStroke,
						fill : d.symbolFill
					};
					if (!a.exportDivElements) {
						a.exportDivElements = [];
						a.exportSVGElements = []
					}
					if (d.enabled !== false) {
						i = f.rect(0, 0, j, h, d.borderRadius, b)
								.align(d, true).attr(r({
									fill : d.backgroundColor,
									"stroke-width" : b,
									zIndex : 19
								}, l)).add();
						o = f.rect(0, 0, j, h, 0).align(d).attr({
							id : d._id,
							fill : "rgba(255, 255, 255, 0.001)",
							title : a.options.lang[d._titleKey],
							zIndex : 21
						}).css({
							cursor : "pointer"
						}).on("mouseover", function() {
							g.attr({
								stroke : d.hoverSymbolStroke,
								fill : d.hoverSymbolFill
							});
							i.attr({
								stroke : d.hoverBorderColor
							})
						}).on("mouseout", c).on("click", c).add();
						if (e)
							k = function() {
								c();
								var p = o.getBBox();
								a.contextMenu("export-menu", e, p.x, p.y, j, h)
							};
						o.on("click", function() {
							k.apply(a, arguments)
						});
						g = f.symbol(d.symbol, d.symbolX, d.symbolY,
								(d.symbolSize || 12) / 2).align(d, true).attr(
								r(m, {
									"stroke-width" : d.symbolStrokeWidth || 1,
									zIndex : 20
								})).add();
						a.exportSVGElements.push(i, o, g)
					}
				},
				destroyExport : function() {
					var b, c;
					for (b = 0; b < this.exportSVGElements.length; b++) {
						c = this.exportSVGElements[b];
						c.onclick = c.ontouchstart = null;
						this.exportSVGElements[b] = c.destroy()
					}
					for (b = 0; b < this.exportDivElements.length; b++) {
						c = this.exportDivElements[b];
						E(c, "mouseleave");
						this.exportDivElements[b] = c.onmouseout = c.onmouseover = c.ontouchstart = c.onclick = null;
						w(c)
					}
				}
			});
	n.Renderer.prototype.symbols.exportIcon = function(b, c, a) {
		return [ "M", b - a, c + a, "L", b + a, c + a, b + a, c + a * 0.5,
				b - a, c + a * 0.5, "Z", "M", b, c + a * 0.5, "L", b - a * 0.5,
				c - a / 3, b - a / 6, c - a / 3, b - a / 6, c - a, b + a / 6,
				c - a, b + a / 6, c - a / 3, b + a * 0.5, c - a / 3, "Z" ]
	};
	n.Renderer.prototype.symbols.printIcon = function(b, c, a) {
		return [ "M", b - a, c + a * 0.5, "L", b + a, c + a * 0.5, b + a,
				c - a / 3, b - a, c - a / 3, "Z", "M", b - a * 0.5, c - a / 3,
				"L", b - a * 0.5, c - a, b + a * 0.5, c - a, b + a * 0.5,
				c - a / 3, "Z", "M", b - a * 0.5, c + a * 0.5, "L",
				b - a * 0.75, c + a, b + a * 0.75, c + a, b + a * 0.5,
				c + a * 0.5, "Z" ]
	};
	A.prototype.callbacks.push(function(b) {
		var c, a = b.options.exporting, f = a.buttons;
		if (a.enabled !== false) {
			for (c in f)
				b.addButton(f[c]);
			B(b, "destroy", b.destroyExport)
		}
	})
})();
