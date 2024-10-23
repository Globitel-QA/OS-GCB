
// Return Public IP address to request from spring to return value 
function GetIPAdress() {


	var IPValue = ""; $.ajax({
		type: 'post', url:
			'UsersControlPath_GCB', cache: false, async: false, data:
			'MethodName=BackendServiceIPAddress', success: function(data) {
				IPValue =
				data.trim();
			}
	});
	return IPValue;

}

function htmlspecialchars(s) {
	return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/"/g,
		'&quot;');
}

function Common() {

	$.ajaxSetup({
	    beforeSend: function (xhr,settings) {
	    	  
	    	 if(settings.headers !=undefined && settings.headers.hasOwnProperty("Skip")){
	    	 
	    	 } else if(settings.url.indexOf("_GCB_WS") > 0 || settings.url.indexOf("/api/") > 0 ) {
		    	xhr.setRequestHeader("Authorization", "Bearer " + sessionStorage.getItem("e99a18c428cb38d5f260853678922e03"));   
	    	 }
	    }
	});



	const EnableCopyPaste = EnableCopyPasteOnAllWebPages();

	// To prevent tags < , > , & this to prevent cross site scripting
	$(':input,textarea').each(function() {
		$(':input,textarea').keypress(function(event) {
			if (event.keyCode === 60 || event.keyCode === 62 || (event.keyCode === 38 && event.target.id != "txtURL")) {
				return false;
			}
		});
	}).bind("paste", function(e) {
		const data = e.originalEvent.clipboardData.getData('Text');
		console.log(data);
		if (data.includes('>') || data.includes('<') || (data.includes('&') && event.target.id != "txtURL")) {
			if (parseInt(EnableCopyPaste) && $(".jconfirm-box > .content-pane").text().trim() != 'Invalid input since it contains any of &,< or > characters.') {
				AlertFunction("Invalid input since it contains any of &,< or > characters.");
			}
			e.preventDefault();
		}
	});

	$('#sample_editable_1').on('keypress paste', 'input', function(event) {
		if (event.type === 'keypress') {
			if (event.keyCode === 60 || event.keyCode === 62 || (event.keyCode === 38 && event.target.id !== "txtURL")) {
				event.preventDefault();
			}
		} else if (event.type === 'paste') {
			const data = event.originalEvent.clipboardData.getData('Text');
			if (data.includes('>') || data.includes('<') || (data.includes('&') && event.target.id !== "txtURL")) {
				if (parseInt(EnableCopyPaste) && $(".jconfirm-box > .content-pane").text().trim() !== 'Invalid input since it contains any of &,< or > characters.') {
					AlertFunction("Invalid input since it contains any of &,< or > characters.");
				}
				event.preventDefault();
			}
		}
	});

	var copyPaste = "";
	$('.rules-group-body').on('keypress', ':input, textarea', function(event) {
		copyPaste = window.parent.EnableCopyPasteOnAllWebPages();
		console.log("copyPaste: " + copyPaste);
		if (event.keyCode === 60 || event.keyCode === 62 || (event.keyCode === 38 && event.target.id != "txtURL")) {
			return false;
		}
		console.log();
	}).on('paste', ':input, textarea', function(e) {
		const data = e.originalEvent.clipboardData.getData('Text');
		copyPaste = window.parent.EnableCopyPasteOnAllWebPages();
		console.log("copyPaste: " + copyPaste);
		if (data.includes('>') || data.includes('<') || (data.includes('&') && event.target.id != "txtURL")) {

			if (parseInt(copyPaste) && $(".jconfirm-box > .content-pane").text().trim() != 'Invalid input since it contains any of &,< or > characters.') {
				AlertFunction("Invalid input since it contains any of &,< or > characters.");

			}
			e.preventDefault();
		}
	}).on('cut copy paste', ':input, textarea', function(e) {
		copyPaste = window.parent.EnableCopyPasteOnAllWebPages();
		if (!parseInt(copyPaste)) {
			e.preventDefault();
			// Optionally, you can show an alert or perform any other action
		}
	});

	copyPaste = window.parent.EnableCopyPasteOnAllWebPages();
	if (!parseInt(copyPaste)) {
		$('.rules-group-body').bind("cut copy paste", function(e) {
			e.preventDefault();
		});
	}


	if (!parseInt(EnableCopyPaste)) {
		$(':input,textarea').bind("cut copy paste", function(e) {
			e.preventDefault();
		});
	}

	if (!parseInt(EnableCopyPaste)) {
		$('#sample_editable_1').bind("cut copy paste", function(e) {
			e.preventDefault();
		});
	}


	// Just allow integers
	$('.number').keydown(function(event) {

		if (!parseInt(EnableCopyPaste)) {

			if (event.keyCode == 46 || event.keyCode == 8
				|| event.keyCode == 9 || event.keyCode == 27
				|| event.keyCode == 13
				|| (event.keyCode == 65 && event.ctrlKey === true)
				|| (event.keyCode >= 35 && event.keyCode <= 39)) {
				return;
			} else {
				// If it's not a number stop the keypress
				if (event.shiftKey
					|| (event.keyCode < 48 || event.keyCode > 57)
					&& (event.keyCode < 96 || event.keyCode > 105)) {
					event.preventDefault();
				}
			}

		} else {

			if (event.keyCode == 46 || event.keyCode == 8
				|| event.keyCode == 9 || event.keyCode == 27
				|| event.keyCode == 13
				|| (event.keyCode == 65 && event.ctrlKey === true)
				|| (event.keyCode == 86 && event.ctrlKey === true)
				|| (event.keyCode >= 35 && event.keyCode <= 39)) {
				return;
			} else {
				// If it's not a number stop the keypress
				if (event.shiftKey
					|| (event.keyCode < 48 || event.keyCode > 57)
					&& (event.keyCode < 96 || event.keyCode > 105)) {
					event.preventDefault();
				}
			}
		}

	}).bind("paste", function(e) {

		const data = e.originalEvent.clipboardData.getData('Text');
		if (!(!isNaN(parseFloat(data)) && isFinite(data))
			|| data.indexOf(' ') >= 0 || data.indexOf('.') >= 0 || data.indexOf('\t') >= 0) {
			e.preventDefault();
		}
	});

	$('.float').keydown(function(event) {


		if (!parseInt(EnableCopyPaste)) {
			if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9
				|| event.keyCode == 27 || event.keyCode == 13 || event.keyCode == 110
				|| (event.keyCode == 65 && event.ctrlKey === true)
				|| (event.keyCode >= 35 && event.keyCode <= 39)) {
				return;
			} else {
				// If it's not a number stop the keypress
				if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
					event.preventDefault();
				}
			}
		} else {
			if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9
				|| event.keyCode == 27 || event.keyCode == 13 || event.keyCode == 110
				|| (event.keyCode == 65 && event.ctrlKey === true)
				|| (event.keyCode == 86 && event.ctrlKey === true)
				|| (event.keyCode >= 35 && event.keyCode <= 39)) {
				return;
			} else {
				// If it's not a number stop the keypress
				if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
					event.preventDefault();
				}
			}
		}
	}).bind("paste", function(e) {
		const data = e.originalEvent.clipboardData.getData('Text');
		if (!(!isNaN(parseFloat(data)) && isFinite(data)) || data.indexOf(' ') >= 0 || data.indexOf('\t') >= 0) {
			e.preventDefault();
		}
	});

	changeLang();
}

$(document).ready(function() {
	Common();
});

function changeLang() {

	try {
		var lang = window.parent.window.parent.$('#SelectedLanguage').val();
	} catch (ex) {
		var lang = 'en';
	}

	try {
		jQuery.i18n
			.properties({
				name: 'Messages',
				path: 'bundle/',
				mode: 'both',
				language: lang,
				async: false,
				callback: function() {

					$(
						'.form-group > label , option , .span4 > div > button , .Translate , .caption-subject.font-green.bold  '
						+ ', .caption-subject.font-green.sbold , th , div.alert , spane , li > a > span.title , span ')
						.each(
							function(event) {

								try {

									if (this.id !== "") {

										$("#" + this.id).text(
											jQuery.i18n
												.prop(this.id));
									}

								} catch (e) {

								}
							});

				}
			});

	} catch (ex) {

	}
}

function CheckEnableAutoComplete() {
	var value = "";
	$.ajax({
		type: 'post',
		url: 'UsersControlPath_GCB',
		cache: false,
		async: false,
		data: 'MethodName=CheckEnableAutoComplete',
		success: function(data) {
			value = data;
		}
	});
	return value;
}

function AlertFunction(Text) {

	// $.notific8(Text, {horizontalEdge: 'bottom'})
	try {
		var lang = window.parent.$('#SelectedLanguage').val();

		$.alert({
			title: jQuery.i18n.prop('Alert'),
			content: Text,
			confirmButtonClass: 'btn-success',
			cancelButtonClass: 'btn-danger',
			keyboardEnabled: true,
			confirmButton: jQuery.i18n.prop('btnOk'),
			onOpen: function() {

				// alert("lang : "+ lang);
				if ($.trim(lang) == 'ar_AR') {
					// alert("HIuull")
					$('.jconfirm-box').attr('dir', 'rtl');
					$('.buttons').css('float', 'left');
				}
			},
			confirm: function() {
				// Do Something
			}
		});
		return false;

	} catch (ex) {

		$.alert({
			title: 'Alert!',
			content: Text,
			confirmButtonClass: 'btn-success',
			cancelButtonClass: 'btn-danger',
			keyboardEnabled: true,
			confirm: function() {
				// Do Something
			}
		});
		return false;

	}
}

function AlertFunctionLogin(Text) {
	// $.notific8(Text, {horizontalEdge: 'bottom'})

	$.alert({
		title: 'Alert!',
		content: Text,
		confirmButtonClass: 'btn-success',
		cancelButtonClass: 'btn-danger',
		keyboardEnabled: true,
		confirm: function() {
			// Do Something
		}
	});
	return false;
}

function CheckSession_Temp() {
	$.ajax({
		type: 'post',
		url: 'UsersControlPath_GCB',
		data: 'MethodName=CheckSession',
		cache: false,
		success: function(data) {
			// AlertFunction(data)
			if (data != 0) {
				window.location = 'LogOff.jsp';
			}
		}
	});
}

function ValidateIPaddress(ip) {
	var ipformat = /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/;
	// 4 Digits//var ipformat =
	// /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/;
	if (ip.match(ipformat)) {

		return true;
	} else {
		// alert("You have entered an invalid IP address!");
		return false;
	}
}

function EnableCopyPasteOnAllWebPages() {


	var value = "";
	$.ajax({
		type: 'post',
		url: 'UsersControlPath_GCB',
		cache: false,
		async: false,
		data: 'MethodName=EnableCopyPasteOnAllWebPages',
		success: function(data) {
			value = data;
		}
	});
	return value;

}


function FillSingleSelect2(AjaxType = 'post', Url, Parameters, Async, SelectedID,
	OptionAllOrSelectText, OptionAllOrSelectValue) {

	$.ajax({
		type: AjaxType,
		url: Url,
		cache: false,
		async: Async,
		data: Parameters,
		success: function(data) {

			Str = "";

			$.each(data, function(key, value) {
				Str += "<option value='" + key + "'>" + value + "</option>";
			});
			$('#' + SelectedID).empty().append(Str);


		}
	});

	sortDropDownListByText(SelectedID);

	if (OptionAllOrSelectValue !== "") {

		try {
			var Str1 = "<option value=" + OptionAllOrSelectValue + ">"
				+ jQuery.i18n.prop(OptionAllOrSelectText) + "</option>";
		} catch (e) {
			var Str1 = "<option value=" + OptionAllOrSelectValue + ">"
				+ OptionAllOrSelectText + "</option>";
		}

		$('#' + SelectedID).prepend(Str1);
		$('#' + SelectedID).val(-1);

	}

	$('#' + SelectedID).select2();

}

function FillSingleSelect(Url, Parameters, Async, SelectedID,
	OptionAllOrSelectText, OptionAllOrSelectValue, AjaxType = 'post') {

	$.ajax({
		type: AjaxType,
		url: Url,
		cache: false,
		async: Async,
		data: Parameters,
		success: function(data) {

			if (data != 0) {

				var Obj = $.parseJSON(data);
				Str = "";

				$.each(Obj,
					function(key, value) {
						Str += "<option value='" + key + "'>" + value
							+ "</option>";
					});
				$('#' + SelectedID).empty().append(Str);

			}
		}
	});

	sortDropDownListByText(SelectedID);

	if (OptionAllOrSelectValue !== "") {

		try {
			var Str1 = "<option value=" + OptionAllOrSelectValue + ">"
				+ jQuery.i18n.prop(OptionAllOrSelectText) + "</option>";
		} catch (e) {
			var Str1 = "<option value=" + OptionAllOrSelectValue + ">"
				+ OptionAllOrSelectText + "</option>";
		}

		$('#' + SelectedID).prepend(Str1);
		$('#' + SelectedID).val(OptionAllOrSelectValue);

	}

	$('#' + SelectedID).select2();

}

function FillSingleSelectTwoValue(Url, Parameters, Async, SelectedID,
	OptionAllOrSelectText, OptionAllOrSelectValue,
	OptionAllOrSelectTextSeconed, OptionAllOrSelectValueSeconed) {

	$.ajax({
		type: 'post',
		url: Url,
		cache: false,
		async: Async,
		data: Parameters,
		success: function(data) {

			if (data != 0) {

				var Obj = $.parseJSON(data);
				Str = "";

				$.each(Obj,
					function(key, value) {
						Str += "<option value='" + key + "'>" + value
							+ "</option>";
					});
				$('#' + SelectedID).empty().append(Str);

			}
		}
	});

	sortDropDownListByText(SelectedID);

	if (OptionAllOrSelectValue !== "") {

		try {
			var Str1 = "<option value=" + OptionAllOrSelectValue + ">"
				+ jQuery.i18n.prop(OptionAllOrSelectText) + "</option>";

		} catch (e) {
			var Str1 = "<option value=" + OptionAllOrSelectValue + ">"
				+ OptionAllOrSelectText + "</option>";
		}
		var Str2 = "<option value=" + OptionAllOrSelectValueSeconed + ">"
			+ jQuery.i18n.prop(OptionAllOrSelectTextSeconed) + "</option>";
		$('#' + SelectedID).prepend(Str2);
		$('#' + SelectedID).prepend(Str1);

		$('#' + SelectedID).val(-1);

	}

	$('#' + SelectedID).select2();

}

function FillMultiSelect(Url, Parameters, Async, ID, SelectedID, SearchTitle) {

	$.ajax({
		type: 'post',
		url: Url,
		cache: false,
		async: Async,
		data: Parameters,
		success: function(data) {

			if (data != 0) {
				var Obj = $.parseJSON(data);
				Str = "";
				$.each(Obj, function(key, value) {
					Str += "<option value='" + key + "'>" + value
						+ "</option>";
				});
				$('#' + ID).html(Str);
				MultiSelectFilterText(ID, '#' + SelectedID);
				$(function() {
					$('#' + ID).filterByText($('#textbox'), true);
				});
				sortDropDownListByText(ID);
				$('#' + ID + ', #' + SelectedID).listswap({
					truncate: true,
					height: 162,
					is_scroll: true,
				});

				$("#listbox_" + SelectedID + "_wrapper > .listbox_search  > #search_listbox")
					.val(jQuery.i18n.prop(SelectedID));
				$("#listbox_" + ID + "_wrapper > .listbox_search  > #search_listbox")
					.val(jQuery.i18n.prop(SearchTitle));
			}
		}
	});

}


function FillMultiSelect_2(Url, AjaxType = "GET", Async, ID, SelectedID, SearchTitle) {

	$.ajax({
		type: AjaxType,
		url: Url,
		cache: false,
		async: Async, 
		success: function(data) {

			if (CheckResponse(data)) {	
				var Obj = data.result;
				Str = "";
				$.each(Obj, function(key, value) {
					Str += "<option value='" + value.id + "'>" + value.name
						+ "</option>";
				});
				$('#' + ID).html(Str);
				MultiSelectFilterText(ID, '#' + SelectedID);
				$(function() {
					$('#' + ID).filterByText($('#textbox'), true);
				});
				sortDropDownListByText(ID);
				$('#' + ID + ', #' + SelectedID).listswap({
					truncate: true,
					height: 162,
					is_scroll: true,
				});

				$("#listbox_" + SelectedID + "_wrapper > .listbox_search  > #search_listbox")
					.val(jQuery.i18n.prop(SelectedID));
				$("#listbox_" + ID + "_wrapper > .listbox_search  > #search_listbox")
					.val(jQuery.i18n.prop(SearchTitle));
			}
		}
	});

}
function MultiSelectFilterText(Selected, List) {

	jQuery.fn.filterByText = function(textbox, selectSingleMatch) {
		return this
			.each(function() {
				var select = this;
				var options = [];
				$(select).find('option').each(function() {
					options.push({
						value: $(this).val(),
						text: $(this).text()
					});
				});
				$(select).data('options', options);
				$(textbox)
					.bind(
						'change keyup',
						function() {
							var options = $(select).empty().data(
								'options');
							var search = $.trim($(this).val());
							var regex = new RegExp(search, "gi");

							$
								.each(
									options,
									function(i) {
										var option = options[i];
										if (option.text
											.match(regex) !== null) {
											$(select)
												.append(
													$(
														'<option>')
														.text(
															option.text)
														.val(
															option.value));
										}
									});
							if (selectSingleMatch === true
								&& $(select).children().length === 1) {
								$(select).children().get(0).selected = true;
							}

							for (var i = 0; i < document
								.getElementById(Selected).options.length; i++) {

								$(
									List
									+ " option[value='"
									+ document
										.getElementById(Selected).options[i].value
									+ "']").remove();
							}

						});
			});
	};
}

function sortDropDownListByText(ListName) {

	// Loop for each select element on the page.
	$("#" + ListName).each(function() {

		// Keep track of the selected option.
		var selectedValue = $(this).val();

		// Sort all the options by text. I could easily sort these by val.
		$(this).html($("option", $(this)).sort(function(a, b) {
			// return a.text == b.text ? 0 : a.text < b.text ? -1 : 1
			return a.text.localeCompare(b.text);
		}));

		// Select one option.
		$(this).val(selectedValue);
	});

	$("#" + ListName + " > option:eq(0)").attr("selected", "selected")
}


function isEmptyFiled(InputID , Msg){
	
	if ($.trim(document.getElementById(InputID).value) == "") {
		
		var div = $("#"+InputID).parent("div.form-group");
		$("#"+InputID).focus();
		div.addClass("has-error");

		try{
			AlertFunction(jQuery.i18n.prop(Msg));
		} catch (e) {
			AlertFunction(Msg);
		}

		return true;
		
	} else {
		
		var div = $("#"+InputID).parent("div.form-group");
		div.removeClass("has-error");
		
		return false;
	}
	
}


 
function isEmptyFiled_MSISDN(ID, Msg) {

	if ($.trim(document.getElementById(ID).value) == "") {

		var div = $("#" + ID).parent("div.input-group.mb-3.input-group-sm");
		$("#" + ID).focus();
		div.addClass("has-error");

		try {
			AlertFunction(jQuery.i18n.prop(Msg));
		} catch (e) {
			AlertFunction(Msg);
		}

		return true;

	} else {

		var div = $("#" + ID).parent("div.input-group.mb-3.input-group-sm");
		div.removeClass("has-error");

		return false;
	}

}

function Msisdns_Count(ID, Msg, Count) {

	if (Number(Count) > 10) {

		var div = $("#" + ID).parent("div.input-group.mb-3.input-group-sm");
		$("#" + ID).focus();
		div.addClass("has-error");

		try {
			AlertFunction(jQuery.i18n.prop(Msg));
		} catch (e) {
			AlertFunction(Msg);
		}

		return true;

	} else {

		var div = $("#" + ID).parent("div.input-group.mb-3.input-group-sm");
		div.removeClass("has-error");

		return false;
	}

}

function isEmailFiled(ID, Value1, Value2, Msg) {

	if ($.trim($('#' + Value1).html()) != jQuery.i18n.prop(Value2)) {

		document.getElementById(ID).focus();
		var div = $("#" + ID).parent("div.form-group");
		div.addClass("has-error");

		try {
			AlertFunction(jQuery.i18n.prop(Msg));
		} catch (e) {
			AlertFunction(Msg);
		}

		return true;

	} else {
		var div = $("#" + ID).parent("div.form-group");
		div.removeClass("has-error");
		return false;
	}

}

function isSelectFiled(ID, Msg, Value) {

	if ($.trim(document.getElementById(ID).value) == Value) {

		var div = $("#" + ID).parent("div.form-group");
		$("#" + ID).focus();
		div.addClass("has-error");

		try {
			AlertFunction(jQuery.i18n.prop(Msg));
		} catch (e) {
			AlertFunction(Msg);
		}

		return true;

	} else {

		var div = $("#" + ID).parent("div.form-group");
		div.removeClass("has-error");

		return false;
	}

}

function ToDateGeratorThenFromDate(toDateID, fromDateID, toDateDivID, fromDateDivID, Msg, Value) {

	if (Value < 0) {

		var div1 = $("#" + toDateDivID).parent("div");
		$("#" + toDateID).focus();
		div1.addClass("has-error");

		var div2 = $("#" + fromDateDivID).parent("div");
		div2.addClass("has-error");

		try {
			AlertFunction(jQuery.i18n.prop(Msg));
		} catch (e) {
			AlertFunction(Msg);
		}

		return true;

	} else {

		var div1 = $("#" + toDateDivID).parent("div");
		div1.removeClass("has-error");

		var div2 = $("#" + fromDateDivID).parent("div");
		div2.removeClass("has-error");

		return false;
	}


}

function isMultiSelectFiled(SeleectedID, FocusID, Msg, Value) {

	if (document.getElementById(SeleectedID).length <= Value) {

		$("#" + FocusID + "  > div > input").focus();
		$("#" + FocusID + "  .listbox_search").addClass("has-error");

		try {
			AlertFunction(jQuery.i18n.prop(Msg));
		} catch (e) {
			AlertFunction(Msg);
		}

		return true;

	} else {

		$("#" + FocusID + "  .listbox_search").removeClass("has-error");

		return false;
	}

}

function isCheckExistance(ID, Url, Async, Msg, Parameters, AjaxType = 'post', LevelError = 0) { // LevelError:0 input inside one div | 1: input inside two div


	FormOk = false;
	$.ajax({
		type: AjaxType,
		url: Url,
		cache: false,
		async: Async,
		data: Parameters,
		success: function(data) {

			let selectedDiv = "";
			if (LevelError == 1) {
				selectedDiv = $("#" + ID).parent('div').parent("div.form-group");
			} else {
				selectedDiv = $("#" + ID).parent("div.form-group");
			}

			if (data > 0) {

				document.getElementById(ID).focus();
				selectedDiv.addClass("has-error");

				try {
					AlertFunction(jQuery.i18n.prop(Msg));
				} catch (e) {
					AlertFunction(Msg);
				}

				FormOk = true;
			} else {

				selectedDiv.removeClass("has-error");

				FormOk = false;
			}

		}
	});
	return FormOk;
}


function isCheckExistance2(ID, Url, Async, Msg, Parameters, AjaxType = 'post') {
	FormOk = false;
	$.ajax({
		type: AjaxType,
		url: Url,
		cache: false,
		async: Async,
		data: Parameters,
		success: function(data) {

			if (data["statusCode"] == 200 && data["exists"]) {

				document.getElementById(ID).focus();
				var div = $("#" + ID).parent("div.form-group");
				div.addClass("has-error");

				try {
					AlertFunction(jQuery.i18n.prop(Msg));
				} catch (e) {
					AlertFunction(Msg);
				}

				FormOk = true;
			} else {

				var div = $("#" + ID).parent("div.form-group");
				div.removeClass("has-error");

				FormOk = false;
			}

		}, error: function(err) {
			AlertErrorRespones(err);
		}
	});
	return FormOk;
}



function isCheckExistanceNewWithOld(NewID, OldID, Url, Async, Msg, Parameters, LevelError = 0) { // LevelError:0 input inside one div | 1: input inside two div


	let selectedDiv = "";
	if (LevelError == 1) {
		selectedDiv = $("#" + NewID).parent('div').parent("div.form-group");
	} else {
		selectedDiv = $("#" + NewID).parent("div.form-group");
	}

	FormOk = false;
	if ($.trim(document.getElementById(NewID).value).toUpperCase() != $.trim(
		document.getElementById(OldID).value).toUpperCase()) {
		$.ajax({
			type: 'post',
			url: Url,
			cache: false,
			async: Async,
			data: Parameters,
			success: function(data) {

				if ($.trim(data) > 0) {

					document.getElementById(NewID).focus();
					selectedDiv.addClass("has-error");
					try {
						AlertFunction(jQuery.i18n.prop(Msg));
					} catch (e) {
						AlertFunction(Msg);
					}
					FormOk = true;

				} else {

					selectedDiv.removeClass("has-error");

					FormOk = false;
				}
			}, error: function(err) {
				AlertErrorRespones(err);
			}
		});

		return FormOk;
	} else {
		return false;
	}

}

function isCheckExistanceNewWithOld2(NewID, OldID, Url, Async, Msg, Parameters, AjaxType = 'post', LevelError = 0) { // LevelError:0 input inside one div | 1: input inside two div



	FormOk = false;
	if ($.trim(document.getElementById(NewID).value).toUpperCase() != $.trim(
		document.getElementById(OldID).value).toUpperCase()) {
		$.ajax({
			type: AjaxType,
			url: Url,
			cache: false,
			async: Async,
			data: Parameters,
			success: function(data) {


				let selectedDiv = "";
				if (LevelError == 1) {
					selectedDiv = $("#" + NewID).parent('div').parent("div.form-group");
				} else {
					selectedDiv = $("#" + NewID).parent("div.form-group");
				}

				if (data["statusCode"] == 200 && data["exists"]) {

					document.getElementById(NewID).focus();
					selectedDiv.addClass("has-error");

					try {
						AlertFunction(jQuery.i18n.prop(Msg));
					} catch (e) {
						AlertFunction(Msg);
					}
					FormOk = true;

				} else {

					selectedDiv.removeClass("has-error");

					FormOk = false;
				}
			}, error: function(err) {
				AlertErrorRespones(err);
			}
		});

		return FormOk;
	} else {
		return false;
	}

}

function isCheckMSISDNFromat(ID, Url, Async, Msg, Parameters, LevelError = 0) { // LevelError:0 input inside one div | 1: input inside two div
	FormOk = false;
	$.ajax({
		type: 'post',
		url: Url,
		cache: false,
		async: Async,
		data: Parameters,
		success: function(data) {

			Arr = data.split("/");
			if ($.trim((Arr[1])) == 0) {

				let selectedDiv = "";
				if (LevelError == 1) {
					selectedDiv = $("#" + ID).parent('div').parent("div.form-group");
				} else {
					selectedDiv = $("#" + ID).parent("div.form-group");
				}

				selectedDiv.addClass("has-error");

				$("#" + ID).focus();


				try {
					AlertFunction(jQuery.i18n.prop(Msg));
				} catch (e) {
					AlertFunction(Msg);
				}

				FormOk = true;
			} else {

				document.getElementById(ID).value = $.trim(Arr[0]);
				FormOk = false;

			}

		}
	});

	return FormOk;

}

function PopupMsg(SelectedID, SuccessDiv, SuccessValue, ErrorDiv, ErrorValue) {

	if (document.getElementById(SelectedID).value == SuccessValue) {
		$("#" + SuccessDiv).slideDown(2000, function() {
			$("#" + SuccessDiv).slideUp(2000);
		}).delay(3000);

	} else if (document.getElementById(SelectedID).value == ErrorValue) {
		$("#" + ErrorDiv).slideDown(2000, function() {
			$("#" + ErrorDiv).slideUp(2000);
		}).delay(3000);
	}

}

function PopupMsgWithoutValue(SelectedDiv) {

	$("#" + SelectedDiv).slideDown(2000, function() {
		$("#" + SelectedDiv).slideUp(2000);
	}).delay(3000);

}

function CalendarForm(TextID, CalendarID, FormatDate) {

	var start = moment().subtract(29, 'days');
	var end = moment();

	$('#' + CalendarID)
		.daterangepicker(
			{
				startDate: start,
				endDate: end,
				"timePicker": true,
				locale: {
					format: FormatDate
				},

				ranges: {
					'Today': [moment().startOf('day'),
					moment().endOf('day')],
					'Yesterday': [
						moment().subtract(1, 'days').startOf('day'),
						moment().subtract(1, 'days').endOf('day')],
					'Last 7 Days': [
						moment().subtract(6, 'days').startOf('day'),
						moment()],
					'Last 30 Days': [
						moment().subtract(29, 'days')
							.startOf('day'), moment()],
					'This Month': [moment().startOf('month'),
					moment().endOf('month')],
					'Last Month': [
						moment().subtract(1, 'month').startOf(
							'month'),
						moment().subtract(1, 'month')
							.endOf('month')]
				}

			}, SetTextDate);

	SetTextDate(TextID, FormatDate, start, end);

}

function SetTextDate(TextID, FormatDate, start, end) {
	$('#' + TextID).val(
		start.format(FormatDate) + ' - ' + end.format(FormatDate));
}

function SingleDate(IDDiv, IDText, FormatDate) {
	// Date before 29 days from now
	var start = moment().subtract(29, 'days');
	// Date Now
	var end = moment();
	$('#' + IDDiv).datetimepicker({
		ignoreReadonly: true,
		allowInputToggle: true,
		widgetPositioning: {
			horizontal: 'auto',
			vertical: 'bottom'
		},
		viewMode: 'days',
		format: FormatDate,
		keyBinds: {
			'delete': function() {
				return;
			}
		}

	});
	$("#" + IDText).val(moment().format(FormatDate));

}

function SelectAllRows(ID, table) {

	$(ID).on('click', function(e) {

		if (table.rows('tr.selected').data().length == table.rows('tr').data().length) {
			table.rows().deselect();
			$(ID + " > i ").removeClass('fa-check-square').addClass('fa-square');
			$(ID).prop('title', jQuery.i18n.prop('btnSelectAll'));

		} else {
			table.rows().select();
			$(ID + " > i ").removeClass('fa-square').addClass('fa-check-square');
			$(ID).prop('title', jQuery.i18n.prop('btnDeselectAll'));
		}
	});
}


 function Module_CheckExistance(ID , URL , Async, Msg , Parameters ) {
	FormOk = false; 
	$.ajax({ type : 'post',
				url : URL ,
				cache : false,
				async : Async , 
				data :  Parameters ,
				success : function(data) {

		 
					if (data > 0) {		
						
						document.getElementById(ID).focus();
						var div = $("#"+ID).parent("div.form-group");
						div.addClass("has-error");

						try{
							AlertFunction(jQuery.i18n.prop(Msg));
						} catch (e) {
							AlertFunction(Msg);
						}
						
						FormOk = true;						
					} else {
						
						var div = $("#"+ID).parent("div.form-group");
						div.removeClass("has-error");
						
						FormOk = false;
					}
					 
				}
			});
	return FormOk ; 
}


function Module_CheckExistanceWithOutParameters(ID , URL , Async, Msg , Type="POST" ) {
	FormOk = false; 
	$.ajax({ type : Type,
				url : URL ,
				cache : false,
				async : Async ,  
				success : function(data) {

		 
				if ((CheckResponse(data))) {	
						
						document.getElementById(ID).focus();
						var div = $("#"+ID).parent("div.form-group");
						div.addClass("has-error");

						try{
							AlertFunction(jQuery.i18n.prop(Msg));
						} catch (e) {
							AlertFunction(Msg);
						}
						
						FormOk = true;						
					} else {
						
						var div = $("#"+ID).parent("div.form-group");
						div.removeClass("has-error");
						
						FormOk = false;
					}
					 
				} , error : function(err) {					 
					AlertErrorRespones(err);
				} 
			});
	return FormOk ; 
}


function Module_CheckExistance_OldwithNew(NewID , OldID , URL , Async, Msg , Parameters ) {
	
	FormOk = false; 
	if ($.trim(document.getElementById(NewID).value).toUpperCase() != $.trim(document.getElementById(OldID).value).toUpperCase()) {
		
		$.ajax({
			type : 'post',
			url : URL ,
			cache : false,
			async : Async , 
			data :  Parameters ,
			success : function(data) {

				if ($.trim(data) > 0) {

					document.getElementById(NewID).focus();
					var div = $("#"+NewID).parent("div.form-group");
					div.addClass("has-error");
					try{
						AlertFunction(jQuery.i18n.prop(Msg));
					} catch (e) {
						AlertFunction(Msg);
					}
					FormOk = true;	

				} else {

					var div = $("#"+ID).parent("div.form-group");
					div.removeClass("has-error");
					
					FormOk = false;
				}
			} , error : function(err) {					 
					AlertErrorRespones(err);
				} 
		});
		
		return FormOk ; 
	} else {
		return false ; 
	}
	
}


function Module_CheckExistance_OldwithNew_WithOutParameters(NewID , OldID , URL , Async, Msg , AjaxType="POST" ) {
	
	FormOk = false; 
	if ($.trim(document.getElementById(NewID).value).toUpperCase() != $.trim(document.getElementById(OldID).value).toUpperCase()) {
		
		$.ajax({
			type : AjaxType,
			url : URL ,
			cache : false,
			async : Async ,  
			success : function(data) {

				if ((CheckResponse(data))) {

					document.getElementById(NewID).focus();
					var div = $("#"+NewID).parent("div.form-group");
					div.addClass("has-error");
					try{
						AlertFunction(jQuery.i18n.prop(Msg));
					} catch (e) {
						AlertFunction(Msg);
					}
					FormOk = true;	

				} else {

					var div = $("#"+ID).parent("div.form-group");
					div.removeClass("has-error");
					
					FormOk = false;
				}
			}, error : function(err) {					 
					AlertErrorRespones(err);
				} 
		});
		
		return FormOk ; 
	} else {
		return false ; 
	}
	
}

function MSISDN_IsValid(ID , URL , Async, Msg , AjaxType = "GET") {
	FormOk = false; 
	$.ajax({
		type : AjaxType,
		url : URL,
		cache : false,
		async : Async ,  
		success : function(data) {
 		if ((CheckResponse(data))) {

			 if(data.result == null){
				 
					 var div = $("#"+ID).parent("div.form-group");
					$("#"+ID).focus();
					div.addClass("has-error");
					
					try{
						AlertFunction(jQuery.i18n.prop(Msg));
					} catch (e) {
						AlertFunction(Msg);
					}
					FormOk = true;
					
			 } else {
				 Arr = data.result.split("/"); 
				/*   
				 if ($.trim((Arr[0])) == 0) {
					var div = $("#"+ID).parent("div.form-group");
					$("#"+ID).focus();
					div.addClass("has-error");
	
					try{
						AlertFunction(jQuery.i18n.prop(Msg));
					} catch (e) {
						AlertFunction(Msg);
					}
					
					FormOk = true;	
				} else {*/
					
					document.getElementById(ID).value = $.trim(Arr[1]);				 
					FormOk = false;
					
				/*}	*/
				
			 }
			
				
		} else {
			document.getElementById(ID).value = $.trim(Arr[0]);				 
			FormOk = false;
		}
		
		
		}
	});
	
	return FormOk ; 

}


function Email_ValidFormat(InputID , CheckValue , ConfiguredValue , Msg){
	
	
	if ($.trim($('#'+CheckValue).html()) != jQuery.i18n.prop(ConfiguredValue)) {

		document.getElementById(InputID).focus();
		var div = $("#"+InputID).parent("div.form-group");
		div.addClass("has-error");

		try{
			AlertFunction(jQuery.i18n.prop(Msg));
		} catch (e) {
			AlertFunction(Msg);
		}

		return true;
		
	} else {
		var div = $("#"+InputID).parent("div.form-group");
		div.removeClass("has-error");
		return false;
	}

	
}


function AlertErrorRespones(error) {

	if (error["statusDesc"] != undefined) {
		AlertFunction(error["statusDesc"]);
	} else if (error["message"] != undefined) {
		AlertFunction(error["message"]);
	} else {
		if (error.responseText != undefined && error.responseText != '') {

			if (!(CheckResponse(JSON.parse(error.responseText)))) {

				if (JSON.parse(error.responseText)["statusCode"] == '-5') {
					AlertFunctionLogin("Invalid username or password.");
				} else {
					AlertFunction(JSON.parse(error.responseText)["statusDesc"]);
				}

			} else {
				AlertFunction(JSON.parse(error.responseText)["statusDesc"]);
			}

		} else if (error.statusText != undefined && error.statusText != '') {

			AlertFunction(error.statusText);

		} else { 
			AlertFunction(error);
		}

	}

}


function parseJwt(token) {
	var base64Url = token.split('.')[1];
	var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
	var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
		return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
	}).join(''));

	return JSON.parse(jsonPayload);
}


function ConvertDMSToDD(LatORLng) { // Devlop By Odai Ahmed

	var degrees;
	var minutes;
	var seconds = '00';
	var direction;

	if (LatORLng.length > 3) { // contine seconds

		degrees = LatORLng[0];
		minutes = LatORLng[1];
		seconds = LatORLng[2];
		direction = LatORLng[3];

	} else {

		degrees = LatORLng[0];
		minutes = LatORLng[1];
		direction = LatORLng[2];
	}

	var dd = Number(degrees) + Number(minutes)
		/ 60 + Number(seconds) / (60 * 60);
	if (direction == "S" || direction == "W") {
		dd = dd * -1;
	} // Don't do anything for N or E
	return dd;
}



function filterText(Selected, List) {

	jQuery.fn.filterByText = function(textbox, selectSingleMatch) {
		return this
			.each(function() {
				var select = this;
				var options = [];
				$(select).find('option').each(function() {
					options.push({
						value: $(this).val(),
						text: $(this).text()
					});
				});
				$(select).data('options', options);
				$(textbox)
					.bind(
						'change keyup',
						function() {
							var options = $(select).empty()
								.data('options');
							var search = $.trim($(this)
								.val());
							var regex = new RegExp(search,
								"gi");

							$
								.each(
									options,
									function(i) {
										var option = options[i];
										if (option.text
											.match(regex) !== null) {
											$(
												select)
												.append(
													$(
														'<option>')
														.text(
															option.text)
														.val(
															option.value));
										}
									});
							if (selectSingleMatch === true
								&& $(select).children().length === 1) {
								$(select).children().get(0).selected = true;
							}

							for (var i = 0; i < document
								.getElementById(Selected).options.length; i++) {

								$(
									List
									+ " option[value='"
									+ document
										.getElementById(Selected).options[i].value
									+ "']")
									.remove();
							}

						});
			});
	};
}

function sortDropDownListByText(ListName) {
	// Loop for each select element on the page.
	// alert(1)
	$("#" + ListName).each(function() {

		// Keep track of the selected option.
		var selectedValue = $(this).val();

		// Sort all the options by text. I could easily sort these by
		// val.
		$(this).html($("option", $(this)).sort(function(a, b) {
			return a.text == b.text ? 0 : a.text < b.text ? -1 : 1
		}));

		// Select one option.
		$(this).val(selectedValue);
	});

	$("#" + ListName + " > option:eq(0)").attr("selected", "selected")
}





function CheckResponse(data){
	 
    if(data != null && (data).hasOwnProperty('statusCode')){
      if(data['statusCode'] == 200){ // success
        return true;
      } else if(data['statusCode'] == -1){ // Failed to add
        return false;
      } else if(data['statusCode'] == -2){ // Failed to update
        return false;
      } else if(data['statusCode'] == -3){ // Failed to delete
        return false;
      } else if(data['statusCode'] == -4){ // QueueIsFullException
        return false;
      } else if(data['statusCode'] == -5){ // BadCredentials
        return false;
      } else if(data['statusCode'] == -6){ 
        return false;
      } else if(data['statusCode'] == -7){ // i will return -7 when user is already logged , UserLoggedIn
        return false;
      } else if(data['statusCode'] == -8){ // user is not active , UserNotActive 
        return false;
      } else if(data['statusCode'] == -9){ // trying to delete default entity , DeleteDefaultEntity 
        return false;
      } else if(data['statusCode'] == -10){ // "no agent to handle customer " + customerId , NoAvailableAgent 
        return false;
      } else if(data['statusCode'] == -11){ // ParsingChatException 
        return false;
      } else if(data['statusCode'] == -12){ // UserNotEligible 
        return false;
      } else if(data['statusCode'] == -13){ // current password is not match  
        return false;
      } else {
        return true;
      }
    } else {
      return true;
    }
    
}



function AlertErrorRespones(error){
 
	//console.log(error); 
	//console.log((error).hasOwnProperty('status'));
	//console.log(error != null && (error).hasOwnProperty('status') && error['status'] == 403);
	
  if(window.navigator.onLine){	

	  if(error != null && (error).hasOwnProperty('status') && error['status'] == 403){
		  
		  console.log(error);
		var getUrl = window.location;
		var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.parent.window.location.assign(baseUrl + '/LogOff.jsp?t=' + window.parent.$("#UserToken").val().trim())
			
			
	  } else {
		  
		  if(error["statusDesc"] !=undefined){
			  
			  AlertFunction(error["statusDesc"]);
			  
		  } else if(error["message"] !=undefined){
			  	 
			AlertFunction(jQuery.i18n.prop("InternalServerError"));
			  console.log(error["message"]);
			  
		  } else if(error["responseJSON"] !=undefined && error["responseJSON"]["message"] !=undefined ){
			  
		  	AlertFunction(jQuery.i18n.prop("InternalServerError"));
			  console.log(error["responseJSON"]["message"]);
				  
		  } else {
			  
			  if(error.responseText != undefined && error.responseText != ''){
				 
				  if(!(CheckResponse(JSON.parse(error.responseText)))){
					  
					  if(JSON.parse(error.responseText)["statusCode"] == '-5'){
						  
							AlertFunctionLogin("Invalid username or password.");
							
					  } else {
						 
						AlertFunction(jQuery.i18n.prop("InternalServerError"));
						  console.log(JSON.parse(error.responseText)["statusDesc"]);
						  
					  }		  
					    
				  } else {
					  
					AlertFunction(jQuery.i18n.prop("InternalServerError"));
					  console.log(JSON.parse(error.responseText)["statusDesc"]);
					  
				  }
				 
			  } else if(error.statusText != undefined && error.statusText != ''){
				 
				AlertFunction(jQuery.i18n.prop("InternalServerError"));
				  console.log(error.statusText);  		   
				 
			  } else {
				AlertFunction(jQuery.i18n.prop("InternalServerError"));
				  console.log(error);  
			  }
			 
		  }
		  
	  }
	 
  }
  
}

