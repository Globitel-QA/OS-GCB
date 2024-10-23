<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@ include file="../../../library/Common/Common.jsp"%>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<style>
    .metric {
        margin-top: -20px;
    }

    .select2-results__option {
        padding-right: 20px;
        vertical-align: middle;
    }

    span.testing > span > span > ul > li.select2-results__option:before {
        content: "";
        display: inline-block;
        position: relative;
        height: 20px;
        width: 20px;
        border: 2px solid #e9e9e9;
        border-radius: 4px;
        background-color: #fff;
        margin-right: 20px;
        vertical-align: middle;
    }

    span.testing > span > span > ul > li.select2-results__option[aria-selected=true]:before {
        font-family: fontAwesome;
        content: "\f00c";
        color: #fff;
        background-color: #f77750;
        border: 0;
        display: inline-block;
        padding-left: 3px;
    }

    .input-group textarea {
        margin-left: -30px;
        margin-Top: -1px;
    }

    .List-country, .List-Operator, .List-Columns {
        display: block;
        width: 100%;
    }

    #trenddiv {
        width: 100%;
        height: 300px;
    }

    #piediv {
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
        Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji",
        "Segoe UI Symbol";
    }

    #piediv {
        width: 100%;
        height: 150px;
    }

    .select2-container--default .select2-results__option[aria-selected=true]
    {
        background-color: #fff;
    }

    .select2-container--default .select2-results__option--highlighted[aria-selected]
    {
        background-color: #eaeaeb;
        color: #272727;
    }

    .select2-container--default .select2-selection--multiple {
        margin-bottom: 10px;
    }

    .select2-container--default.select2-container--open.select2-container--below .select2-selection--multiple
    {
        border-radius: 4px;
    }

    .select2-container--default.select2-container--focus .select2-selection--multiple
    {
        border-color: #f77750;
        border-width: 2px;
    }

    .select2-container--default .select2-selection--multiple {
        border-width: 2px;
    }

    .select2-container--open .select2-dropdown--below {
        border-radius: 6px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    }

    .select2-selection .select2-selection--multiple:after {
        content: 'hhghgh';
    }
    /* select with icons badges single*/
    .select-icon .select2-selection__placeholder .badge {
        display: none;
    }

    .select-icon .placeholder {
        display: none;
    }

    #ChoseCountry, #ChoseColumn {
        margin-top: 30px;
    }

    .select-icon .select2-results__option:before, .select-icon .select2-results__option[aria-selected=true]:before
    {
        display: none !important;
        /* content: "" !important;  */
    }
    fieldset>.legend {
        border-radius: 4px;
        margin-left: -0.9em;
        padding-left: 10px;
        width: fit-content;
        margin-bottom: 0px;
        border-bottom: 0px;
        font-size: 13px;
        color:#32c5d2!important
    }

    fieldset {
        padding-bottom: 10px !important;
    }

</style>
<body>

<input type="hidden" name="SelectedID" id="SelectedID"
       value=<%out.println(htmlspecialchars(request.getParameter("ID")));%>>

<input type="hidden" name="oldName" id="oldName" value="<%= request.getParameter("Name") %>">

<iframe style="display: none; width: 90%; height: 100%; max-height: 100%;"
        class="open AddZoneProtection" src="#" frameBorder="0"></iframe>
<div class="row">
    <div class="col-md-12 ">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="pull-right"></div>

                <div class="caption">
                    <i class="icon-social-dribbble font-green"></i> <span
                        class="caption-subject font-green bold" id="Campaigns_UpdateCampaign">Update
							Campaign</span>
                </div>
            </div>
            <div class="portlet-body form">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <form role="form">


                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label id="Campaigns_Name">Campaign Name</label> <input
                                            class="form-control input-sm" id="txtName" maxlength="50">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label id="Campaigns_SenderID">Sender ID</label> <input
                                            class="form-control input-sm" id="txtSender" maxlength="255"
                                            disabled>
                                    </div>
                                </div>

                                <div class=" col-sm-6">
                                    <div class="form-group">
                                        <label id="Campaigns_DataCodingScheme">Data Coding Scheme</label> <select style="width: 100%"
                                                                                                                  Size="1" class="form-control input-sm"
                                                                                                                  id="selectDataCodingScheme">
                                        <option id="Campaigns_selectDataCodingScheme" value=-2>Select Data Coding Scheme</option>
                                        <option id="Campaigns_7BitsCoding" value=GSM_7_Bit_Coding>7 Bits Coding</option>
                                        <option id="Campaigns_8BitsCoding" value=GSM_8_Bit_Coding>8 Bits Coding</option>
                                        <option id="Campaigns_UCS2" value=GSM_16_Bit_Coding>UCS2</option>
                                    </select>
                                    </div>
                                </div>


                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="Campaigns_txtRepetitionPeriod" id="Campaigns_RepetitionPeriod">Repetition Period
                                            &nbsp;</label><label id="Campaigns_InSeconds" style="font-size: 12px;"> (In Seconds)</label><input
                                            class="form-control input-sm number"
                                            id="Campaigns_txtRepetitionPeriod"
                                            placeholder="This value must be between 1 and 131,071."
                                            oninput="validateRange(this)" autocomplete="off">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label id="Campaigns_BroadcastNumber" for="Campaigns_txtBroadcastsNumber">Broadcast Number</label> <input
                                            class="form-control input-sm number"
                                            id="Campaigns_txtBroadcastsNumber"
                                            placeholder="This value must be between 0 and 65,535."
                                            oninput="validateRangeBroadcastsNumber(this)" autocomplete="off">
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label id="Campaigns_StartDateTime">Start Date Time</label>
                                        <div class="input-group" id="defaultrange">
                                            <input type="text" class="form-control input-sm"
                                                   id="Datetxt" readonly="readonly" /> <span
                                                class="input-group-btn">
													<button class="btn default date-range-toggle"
                                                            style="height: 30px" type="button">
														<i class="fa fa-calendar"></i>
													</button>
												</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label id="Zones_ZoneName">Zone</label><button id="btnAddZone" class="btn btn-success pull-right Translate"
                                                                                       onclick="AddZone();return false;"
                                                                                       style="line-height: 0.8; margin-top: -6px;margin-left: 10px;">Add Zone</button>
                                        <button id="btnShowZone" class="btn btn-success pull-right Translate"
                                                onclick="ShowZone();return false;"
                                                style="line-height: 0.8; margin-top: -6px">Show Zone
                                        </button>
                                        <div class="input-group" id="defaultrange">
                                            <select style="width: 100%" size="1"
                                                    class="form-control input-sm" id="selectedZone">
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label id="Campaigns_MessageText">Message Text</label>
                                        <textarea class="form-control input-sm" id="txtMessageText"
                                                  name="txtDescription" maxlength="512" rows="3" cols="28"
                                                  style="resize: none;"></textarea>
                                    </div>
                                </div>



                                <div class="col-sm-12">
                                    <fieldset class="portlet light bordered form-group fieldset-select2">
                                        <legend class="legend bold" id="LabelOperatorsandNetworks"> Operators and Networks &nbsp;</legend>
                                        <br>
                                    </fieldset>
                                </div>

                                <br> <br>
                                <div class="col-sm-12">
                                    <div class="span4">
                                        <div class='pull-right'>
                                            <button id="btnSave" class="btn btn-success "
                                                    onclick="IsFormComplete();return false;">Save</button>
                                            <button id="btnCancel" class="btn btn-danger "
                                                    onclick="Cancel();return false;">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var BackendServiceIPAddress = GetIPAdress();
    //$('#selectDisplayMode').select2();
    var version;
    var messageNumber;
    var referenceMessageNumber =  [];
    var requestMessageType = null;
    var globalCampaignData = null;
    var globalOperatorIDs = [];


    $(document).ready(function() {

        $("#txtName").focus();
        CheckSession();
        FillOperators();
        getFromSystemSetting(['SenderID', 'Version','MessageNumberFormat']);
        FillZones();
        $('#selectDataCodingScheme').select2();

        $('#selectedZone').select2();
        $(function() {
            var lang = window.parent.$('#SelectedLanguage').val();

            updatePlaceholder(lang);

            function updateSingleDatePicker(date) {
                $('#Datetxt').val(date.format('MM/DD/YYYY HH:mm'));
            }

            $('#selectedZone').on('change', function () {
                zoneId = $(this).val();
            });

            $('#defaultrange').daterangepicker({
                singleDatePicker : true,
                timePicker : true,
                startDate : moment(),
                locale : {
                    format : 'MM/DD/YYYY HH:mm'
                }
            }, updateSingleDatePicker);

            updateSingleDatePicker(moment());

            $('#defaultrange').on('apply.daterangepicker',
                function(ev, picker) {
                    updateSingleDatePicker(picker.startDate);
                });

            $('#defaultrange').on(
                'showCalendar.daterangepicker',
                function(ev, picker) {
                    if (lang == "ar_AR") {
                    }
                    $(".applyBtn").text(
                        jQuery.i18n.prop('btnApply'));
                    $(".cancelBtn").text(
                        jQuery.i18n.prop('btnCancel'));
                });

        });

    });

    FillData(document.getElementById('SelectedID').value);

    function FillData(ID) {
        $.ajax({
            type: 'GET',
            url: BackendServiceIPAddress + '/api/campaign/' + ID,
            cache: false,
            async: false,
            success: function(data) {
                console.log("Received data:", data);
                // Check the actual content of 'data'
                requestMessageType = data.result.requestMessageType;
                globalCampaignData = data.result;


                data.result.campaignOperators.forEach(function(operator) {
                    var operatorInfo = {
                        operatorID: operator.operatorID,
                        messageNumber: operator.messageNumber
                    };
                    referenceMessageNumber.push(operatorInfo);
                });

                if (data.result) {
                    if (data.result.name) {
                        $('#txtName').val(data.result.name);
                    }

                    if (data.result.senderID) {
                        $('#txtSender').val(data.result.senderID);
                    }

                    if (data.result.codingScheme) {
                        var codingScheme = data.result.codingScheme;
                        $('#selectDataCodingScheme').val(codingScheme).trigger('change');
                    }

                    if (data.result.repetitionPeriod) {
                        $('#Campaigns_txtRepetitionPeriod').val(data.result.repetitionPeriod);
                    }

                    if (data.result.broadCastNumber) {
                        $('#Campaigns_txtBroadcastsNumber').val(data.result.broadCastNumber);
                    }

                    if (data.result.scheduleDate) {
                        $('#Datetxt').val(data.result.scheduleDate);
                    }

                    if (data.result.zone && data.result.zone.id) {
                        FillZoneByID(data.result.zone.id);
                    }

                    if (data.result.messageContent) {
                        $('#txtMessageText').val(data.result.messageContent);
                    }
                    if (data.result && data.result.campaignOperators) {
                        data.result.campaignOperators.forEach(function(operator) {
                            let checkboxId = 'chkstatus' + operator.operatorID;
                            let selectId = 'selectedNetwork' + operator.operatorID;
                            globalOperatorIDs.push(data.result.campaignOperators);

                            if (operator.requestMessageType !== "CBS Cancel Request") {
                                $('#' + checkboxId).prop('checked', true);
                            }
                            let networks = operator.network.split(' '); //To fill the select2 options according to the check box
                            $('#' + selectId).val(networks).trigger('change');
                        });

                        $('[id^=chkstatus]').each(function(index) { //To disabled the select2 options for the unchecked box
                            let checkboxId = $(this).attr('id');
                            let selectId = 'selectedNetwork' + checkboxId.replace('chkstatus', '');

                            if (!$(this).is(':checked')) {
                                $('#' + selectId).prop('disabled', true).trigger('change.select2');
                            }
                        });
                    }
                }
            }
        });
    }


    function generateRandomNumber() {
        return Math.floor(1000 + Math.random() * 9000);
    }

    function initializeSelect2(selector) {
        $(selector).append(new Option("GSM", "GSM"));
        $(selector).append(new Option("UMTS", "UMTS"));
        $(selector).append(new Option("LTE", "LTE"));

        $(selector).select2({
            closeOnSelect : false,
            placeholder : "Select Networks",
            allowHtml : true,
            allowClear : true,
            tags : true,
            theme: 'select2 select2-container select2-container--bootstrap testing'

        });
    }

    function getFromSystemSetting(settingNames) {
        let settingsQuery = settingNames.join(',');
        let v_url = BackendServiceIPAddress + '/api/systemsettings/GetByNames/' + settingsQuery;

        $.ajax({
            type: 'GET',
            url: v_url,
            cache: false,
            async: false,
            success: function(data) {
                if (data.result && data.result.length) {
                    settingNames.forEach(function(settingName) {
                        const settingObj = data.result.find(item => item.name === settingName);
                        if (settingObj) {
                            if (settingName === 'Version') {
                                version = settingObj.value;
                            }
                            else if (settingName === 'MessageNumberFormat') {
                                messageNumber = settingObj.value;
                            }
                            else if (settingName === 'SenderID') {
                                $('#txtSender').val(settingObj.value);
                            }
                        }
                    });
                }
            },
            error: function(xhr, status, error) {
                console.error("Error fetching system settings: ", status, error);
            }
        });
    }

    function validateRange(element) {
        let min = element.min || 1;
        let max = element.max || 131071;

        if (parseInt(element.value) < parseInt(min)) {
            element.value = min;
        } else if (parseInt(element.value) > parseInt(max)) {
            element.value = max;
        }
    }
    function validateRangeBroadcastsNumber(element) {
        let min = element.min || 0;
        let max = element.max || 65535;

        if (parseInt(element.value) < parseInt(min)) {
            element.value = min;
        } else if (parseInt(element.value) > parseInt(max)) {
            element.value = max;
        }
    }

    function FillOperators() {
        let v_url = BackendServiceIPAddress + '/api/operator';
        $.ajax({
            type: 'GET',
            url: v_url,
            cache: false,
            async: false,
            success: function(data) {
                let legend = $("#LabelOperatorsandNetworks:contains('Operators and Networks')");
                let brAfterLegend = legend.nextAll('br').first();

                data.result.forEach(function(operator, index) {
                    let checkboxDiv = $('<div>', { class: 'col-sm-2' });
                    let formGroupCheckbox = $('<div>', { class: 'form-group', style: 'display: flex;' });
                    let checkboxLabel = $('<label>', { class: 'mt-checkbox' });
                    // Removed checked attribute from the checkbox
                    let checkbox = $('<input>', { type: 'checkbox', class: 'form-check-input', id: 'chkstatus' + (index + 1), name: 'chkstatus' });
                    let span = $('<span>');
                    let operatorLabel = $('<label>').text(operator.operatorName);
                    checkboxLabel.append(checkbox, span);
                    formGroupCheckbox.append('&nbsp;', checkboxLabel, operatorLabel);
                    checkboxDiv.append(formGroupCheckbox);

                    let selectDiv = $('<div>', { class: 'col-sm-4' });
                    let formGroupSelect = $('<div>', { class: 'form-group' });
                    let select = $('<select>', { class: 'form-control fluied input-sm', style: 'width: 100%', id: 'selectedNetwork' + (index + 1), multiple: 'multiple' });
                    formGroupSelect.append(select);
                    selectDiv.append(formGroupSelect);

                    brAfterLegend.after(checkboxDiv, selectDiv);
                    brAfterLegend = selectDiv;

                    initializeSelect2('#selectedNetwork' + (index + 1));
                    select.prop('disabled', false);

                    let selectId = '#selectedNetwork' + (index + 1);

                    checkbox.on('change', function() {
                        $(selectId).prop('disabled', !this.checked).trigger('change.select2');//Disabled the select2 when the check box is unchecked
                        if (!this.checked) {  // Clear the selections in the select2 when the checkbox is unchecked
                            $(selectId).val(null).trigger('change');
                        }
                    });
                });
            }
        });
    }


    function convertData(data) {
        let result = {};
        if (data && data.result) {
            data.result.forEach(function(item) {
                result[item.id] = item.name;
            });
        }
        return JSON.stringify(result);
    }



    function sortDropDownListByText1(ListName) {
        // Loop for each select element on the page.
        $("#" + ListName).each(function() {
            // Keep track of the selected option.
            var selectedValue = $(this).val();
            // Sort all the options by text. I could easily sort these by val.
            $(this).html($("option", $(this)).sort(function(a, b) {
                return a.text == b.text ? 0 : a.text < b.text ? -1 : 1
            }));
            // Select one option.
            $(this).val(selectedValue);
        });
        $("#" + ListName + " > option:eq(0)").attr("selected", "selected")
    }

    function AddZone() {

        let lang = window.parent.$("#SelectedLanguage").val();
        $(".AddZoneProtection").attr("src", "Interfaces/Zones/Add.jsp?lang=" + lang + '&whichManagement=1');

        var modal = new Custombox.modal({
            content : {
                effect : 'fadein',
                target : '.AddZoneProtection'
            },
            loader : {
                active : false,
                color : '#fff',
                speed : 1000,
            },
            close : true
        });

        modal.open();

    }

    function ShowZone() {
        let lang = window.parent.$("#SelectedLanguage").val();
        let iframeSrc = "Interfaces/Campaigns/ShowZone.jsp?lang=" + lang + '&whichManagement=1' + '&ID=' + encodeURIComponent(zoneId);
        $(".AddZoneProtection").attr("src", iframeSrc);

        var modal = new Custombox.modal({
            content: {
                effect: 'fadein',
                target: '.AddZoneProtection'
            },
            loader: {
                active: false,
                color: '#fff',
                speed: 1000,
            },
            close: true
        });

        modal.open();
    }

    function FillZoneByID(zoneID) {
        let v_url = BackendServiceIPAddress + '/api/zones/' + zoneID;
        $.ajax({
            type: 'GET',
            url: v_url,
            cache: false,
            success: function(data) {
                if (data && data.result) {
                    var zone = data.result;
                    var newOption = new Option(zone.name, zone.id, false, true);
                    $('#selectedZone').append(newOption).trigger('change');
                } else {
                }
            },
            error: function() {
            }
        });
    }

    function FillZones() {
        let v_url = BackendServiceIPAddress + '/api/zones';
        $.ajax({
            type : 'GET',
            url : v_url,
            cache : false,
            async : false,
            success : function(data) {
                var transformedData = convertData(data);
                if (transformedData != 0) {
                    var Obj = $.parseJSON(transformedData);
                    Str = "";
                    $.each(Obj, function(key, value) {
                        Str += "<option value='" + key + "'>" + value
                            + "</option>";
                    });
                    $('#selectedZone').html(Str);
                    $('#selectedZone').select2();
                    sortDropDownListByText1('selectedZone');
                    $('#selectedZone').prepend($('<option>', {
                        value : "-1",
                        text : 'Select Zone',
                        id : 'selectfn',
                        selected : 'selected'

                    }));

                } else {
                }

            }
        });
    }

    function sortDropDownListByText1(ListName) {
        $("#" + ListName).each(function() {
            var selectedValue = $(this).val();
            $(this).html($("option", $(this)).sort(function(a, b) {
                return a.text == b.text ? 0 : a.text < b.text ? -1 : 1
            }));
            $(this).val(selectedValue);
        });
        $("#" + ListName + " > option:eq(0)").attr("selected", "selected")
    }

    function IsFormComplete() {

        if(isEmptyFiled("txtName" , "You must enter the campaign name." )){
            FormOk = false;
        }else {
            checkExistance();
        }
    }

    function checkExistance() {
        let Name = $.trim($('#txtName').val());
        let oldName = $.trim(document.getElementById('oldName').value);
        if (Name !== oldName) {

            $.ajax({
                type: 'GET',
                url: BackendServiceIPAddress + '/api/campaign/GetByName/' + encodeURIComponent(Name),
                cache: false,
                success: function(data) {
                    if (data.statusCode === 200) {
                        $("#txtName").focus();
                        let div = $("#txtName").parent("div.form-group");
                        AlertFunction("This campaign name is already exist.");
                        div.addClass("has-error"); // Add red color
                    } else {
                        ContinueCheckingTwo();
                    }
                }
            });
        } else {
            ContinueCheckingTwo();
        }

    }

    function ContinueCheckingTwo() {

        let checkboxes = $('#chkstatus1, #chkstatus2, #chkstatus3');
        let isAnyChecked = checkboxes.is(':checked');
        FormOk = true;

        if($('#selectDataCodingScheme').prop('disabled') === false && isSelectFiled("selectDataCodingScheme" , "You must select the data coding scheme." , "-2")){
            FormOk = false;
        } else if(isEmptyFiled("Campaigns_txtRepetitionPeriod" , "You must enter the repetition period." )){
            FormOk = false;
        } else if(isEmptyFiled("Campaigns_txtBroadcastsNumber" , "You must enter the broadcast number." )){
            FormOk = false;
        } else  if ($('#selectedZone').prop('disabled') === false && isSelectFiled("selectedZone", "You must select the zone.", "-1")) {
            $('#selectedZone').closest('.form-group').addClass('has-error');
            FormOk = false;
        } else if(isEmptyFiled("txtMessageText" , "You must enter the message text." )){
            FormOk = false;
        }
        else if (!isAnyChecked) { //To check if there is at least one operator checked
            AlertFunction("You must select at least one operator.");
            checkboxes.closest("div.form-group").addClass("has-error");
            FormOk = false;
        } else {
            checkboxes.closest("div.form-group").removeClass("has-error");

        }
        checkboxes.each(function(index) {//To check if the networks is emptty while the operator is checked
            let checkbox = $(this);
            let selectBox = $('#selectedNetwork' + (index + 1));

            if (checkbox.is(':checked') && (!selectBox.val() || selectBox.val().length === 0)) {
                selectBox.focus();
                selectBox.parent("div.form-group").addClass("has-error");
                AlertFunction("You must select at least one network");
                FormOk = false;
            } else {
                selectBox.parent("div.form-group").removeClass("has-error");
            }
        });
        if (FormOk) {
            SaveChanges();
        }
    }

    function updatePlaceholder(lang) {
        let repetitionPeriod = document.getElementById('Campaigns_txtRepetitionPeriod');
        let broadcastsNumber = document.getElementById('Campaigns_txtBroadcastsNumber');

        if (lang === 'ar_AR') {
            repetitionPeriod.placeholder = 'يجب أن تكون هذه القيمة بين 1 و131,071.';
            broadcastsNumber.placeholder = 'يجب أن تكون هذه القيمة بين 0 و65,535.';
        } else if (lang === 'en') {
            repetitionPeriod.placeholder = 'This value must be between 1 and 131,071.';
            broadcastsNumber.placeholder = 'This value must be between 0 and 65,535.';
        }
    }


    function SaveChanges() {
        var messageID ;
        let requestMessageType ='CBS Request';
        let ID = document.getElementById('SelectedID').value;

        let campaignName = document.getElementById('txtName').value;
        let selectedZone = document.getElementById('selectedZone').value;
        let senderId = document.getElementById('txtSender').value;
        let startDate = document.getElementById('Datetxt').value;
        let broadcastsNumber = document.getElementById('Campaigns_txtBroadcastsNumber').value;
        let repetitionPeriod = document.getElementById('Campaigns_txtRepetitionPeriod').value;
        let messageText = document.getElementById('txtMessageText').value;
        let dataCodingScheme = document.getElementById('selectDataCodingScheme').options[document.getElementById('selectDataCodingScheme').selectedIndex].value;



        let zainOperator = document.getElementById('chkstatus1').checked;
        let UmniahOperator = document.getElementById('chkstatus2').checked;
        let orangeOperator = document.getElementById('chkstatus3').checked;

        let campaignOperators = [];

        function determineRequestMessageType(operatorID) {
            let operatorObject = globalCampaignData.campaignOperators.find(obj =>obj.operatorID === operatorID && obj.requestMessageType !== "CBS Cancel Request");
            // If the operator doesn't exist, return a initate value
            if (!operatorObject) {
                return 'CBS Request';
            }

            if (['CBS Request', 'CBS Update Request', 'CBS Cancel Request'].includes(operatorObject.requestMessageType)) {
                return 'CBS Update Request';
            } else {
                return operatorObject.requestMessageType;
            }
        }



        function handleUnCheckedOperator(operatorID) {
            let operator = globalCampaignData.campaignOperators.find(op => op.operatorID === operatorID);

            // Exit if operator is not found
            if (!operator) {
                return -1;
            }

            if (['CBS Update Request', 'CBS Cancel Request', 'CBS Request'].includes(operator.requestMessageType)) {
                return 'CBS Cancel Request';
            }
        }








        if (zainOperator) {
            let operatorObject = referenceMessageNumber.find(obj => obj.operatorID === 1);
            let referenceMessageNum = operatorObject ? operatorObject.messageNumber : 'null';
            let selectedZainNetwork = Array.from(document.getElementById('selectedNetwork1').options)
                .filter(option => option.selected)
                .map(option => option.value);
            campaignOperators.push({
                campaignID :ID,
                operatorID: 1,
                messageNumber: messageNumber + generateRandomNumber(),
                messageID: generateRandomNumber(),
                referenceMessageNumber: referenceMessageNum,
                requestMessageType: determineRequestMessageType(1),
                network: selectedZainNetwork.join(' ')
            });
        }	else {
            let requestMessageType = handleUnCheckedOperator(1);
            if (requestMessageType !== -1) {
                let operatorObject = referenceMessageNumber.find(obj => obj.operatorID === 1);
                let referenceMessageNum = operatorObject ? operatorObject.messageNumber : 'null';
                let selectedZainNetwork = Array.from(document.getElementById('selectedNetwork1').options)
                    .filter(option => option.selected)
                    .map(option => option.value);
                campaignOperators.push({
                    campaignID :ID,
                    operatorID: 1,
                    messageNumber: messageNumber + generateRandomNumber(),
                    messageID: generateRandomNumber(),
                    referenceMessageNumber: referenceMessageNum,
                    requestMessageType: handleUnCheckedOperator(1),
                    network: 'null'
                });

            }else {
            }

        }

        if (UmniahOperator) {
            let operatorObject = referenceMessageNumber.find(obj => obj.operatorID === 2);
            let referenceMessageNum = operatorObject ? operatorObject.messageNumber : 'null';
            let selectedUmniahNetwork = Array.from(document.getElementById('selectedNetwork2').options)
                .filter(option => option.selected)
                .map(option => option.value);
            campaignOperators.push({
                campaignID :ID,
                operatorID: 2,
                messageNumber: messageNumber + generateRandomNumber(),
                messageID: generateRandomNumber(),
                referenceMessageNumber: referenceMessageNum,
                requestMessageType: determineRequestMessageType(2),
                network: selectedUmniahNetwork.join(' ')
            });
        } else {
            let requestMessageType = handleUnCheckedOperator(2);
            if (requestMessageType !== -1) {
                let operatorObject = referenceMessageNumber.find(obj => obj.operatorID === 2);
                let referenceMessageNum = operatorObject ? operatorObject.messageNumber : 'null';
                let selectedUmniahNetwork = Array.from(document.getElementById('selectedNetwork2').options)
                    .filter(option => option.selected)
                    .map(option => option.value);
                campaignOperators.push({
                    campaignID :ID,
                    operatorID: 2,
                    messageNumber: messageNumber + generateRandomNumber(),
                    messageID: generateRandomNumber(),
                    referenceMessageNumber: referenceMessageNum,
                    requestMessageType: handleUnCheckedOperator(2),
                    network: 'null'
                });

            }else {
            }

        }

        if (orangeOperator) {
            let operatorObject = referenceMessageNumber.find(obj => obj.operatorID === 3);
            let referenceMessageNum = operatorObject ? operatorObject.messageNumber : 'null';
            let selectedOrangeNetwork = Array.from(document.getElementById('selectedNetwork3').options)
                .filter(option => option.selected)
                .map(option => option.value);
            campaignOperators.push({
                campaignID :ID,
                operatorID: 3,
                messageNumber: messageNumber + generateRandomNumber(),
                messageID: generateRandomNumber(),
                referenceMessageNumber: referenceMessageNum,
                requestMessageType: determineRequestMessageType(3),
                network: selectedOrangeNetwork.join(' ')
            });
        } else {
            let requestMessageType = handleUnCheckedOperator(3);
            if (requestMessageType !== -1) {
                let operatorObject = referenceMessageNumber.find(obj => obj.operatorID === 3);
                let referenceMessageNum = operatorObject ? operatorObject.messageNumber : 'null';
                let selectedOrangeNetwork = Array.from(document.getElementById('selectedNetwork3').options)
                    .filter(option => option.selected)
                    .map(option => option.value);
                campaignOperators.push({
                    campaignID :ID,
                    operatorID: 3,
                    messageNumber: messageNumber + generateRandomNumber(),
                    messageID: generateRandomNumber(),
                    referenceMessageNumber: referenceMessageNum,
                    requestMessageType: handleUnCheckedOperator(3),
                    network: 'null'
                });

            }else {
            }

        }

        let zoneCoordinates = null;

        $.ajax({
            type: 'GET',
            url: BackendServiceIPAddress + '/api/zones/' + selectedZone,
            cache: false,
            async: false,
            success: function(data) {
                console.log("Received data:", data); // Check the actual content of 'data'

                try {
                    var locationData;

                    if (data.result && data.result.location) {
                        locationData = JSON.parse(data.result.location);
                        Coordinates = locationData.location.coordinates;
                        zoneCoordinates = JSON.stringify(Coordinates);

                    } else {
                        console.error("Location data is missing or invalid.");
                        // Handle missing or invalid location data
                    }
                } catch (error) {
                    console.error("Error in processing data:", error);
                    // Handle the error accordingly
                }
            },
            error: function(xhr, status, error) {
                console.error("Error in AJAX request:", error);
                // Handle the AJAX error accordingly
            }
        });

        let campaignData = {
            campaign: {
                id:ID,
                name: campaignName,
                zoneID: parseInt(selectedZone),
                senderID: senderId,
                version: parseInt(version),
                scheduleDate: startDate +':00',
                broadCastNumber: parseInt(broadcastsNumber),
                repetitionPeriod: parseInt(repetitionPeriod),
                messageContent: messageText,
                codingScheme: dataCodingScheme,
                zoneCoordinates:zoneCoordinates
            },
            campaignOperators: campaignOperators,

        };


        console.log(campaignData)
        $.ajax({
            type : 'PUT',
            url : BackendServiceIPAddress
                + '/api/campaign',
            cache : false,
            data : JSON.stringify(campaignData),
            contentType: "application/json",
            success : function(data) {
                var isResponseOk = CheckResponse(data);
                if (isResponseOk) {
                    loadpage('Interfaces/Campaigns/Campaigns.jsp?UpdatePage=1', 'SystemSettings');
                }
                else {
                    loadpage('Interfaces/Zones/Zones.jsp?UpdatePage=-1', 'SystemSettings');
                }

            },
            error: function(data) {
                AlertFunction(data.responseJSON.statusDescription);
            }
        });

    }

    function Cancel() {
        loadpage('Interfaces/Campaigns/Campaigns.jsp',
            'SystemSettings');

    }
</script>
</body>
</html>