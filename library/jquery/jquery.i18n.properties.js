/******************************************************************************
 * jquery.i18n.properties
 *
 * Dual licensed under the GPL (http://dev.jquery.com/browser/trunk/jquery/GPL-LICENSE.txt) and
 * MIT (http://dev.jquery.com/browser/trunk/jquery/MIT-LICENSE.txt) licenses.
 *
 * @version     1.2.4
 * @url         https://github.com/jquery-i18n-properties/jquery-i18n-properties
 * @inspiration Localisation assistance for jQuery (http://keith-wood.name/localisation.html)
 *              by Keith Wood (kbwood{at}iinet.com.au) June 2007
 *
 *****************************************************************************/

(function ($) {

    $.i18n = {};

    /** Map holding bundle keys (if mode: 'map') */
    $.i18n.map = {};

    /**
     * Load and parse message bundle files (.properties),
     * making bundles keys available as javascript variables.
     *
     * i18n files are named <name>.js, or <name>_<language>.js or <name>_<language>_<country>.js
     * Where:
     *      The <language> argument is a valid ISO Language Code. These codes are the lower-case,
     *      two-letter codes as defined by ISO-639. You can find a full list of these codes at a
     *      number of sites, such as: http://www.loc.gov/standards/iso639-2/englangn.html
     *      The <country> argument is a valid ISO Country Code. These codes are the upper-case,
     *      two-letter codes as defined by ISO-3166. You can find a full list of these codes at a
     *      number of sites, such as: http://www.iso.ch/iso/en/prods-services/iso3166ma/02iso-3166-code-lists/list-en1.html
     *
     * Sample usage for a bundles/Messages.properties bundle:
     * $.i18n.properties({
     *      name:      'Messages',
     *      language:  'en_US',
     *      path:      'bundles'
     * });
     * @param  name      (string/string[], optional) names of file to load (eg, 'Messages' or ['Msg1','Msg2']). Defaults to "Messages"
     * @param  language    (string, optional) language/country code (eg, 'en', 'en_US', 'pt_BR'). if not specified, language reported by the browser will be used instead.
     * @param  path      (string, optional) path of directory that contains file to load
     * @param  mode      (string, optional) whether bundles keys are available as JavaScript variables/functions or as a map (eg, 'vars' or 'map')
     * @param  debug     (boolean, optional) whether debug statements are logged at the console
     * @param  cache        (boolean, optional) whether bundles should be cached by the browser, or forcibly reloaded on each page load. Defaults to false (i.e. forcibly reloaded)
     * @param  encoding  (string, optional) the encoding to request for bundles. Property file resource bundles are specified to be in ISO-8859-1 format. Defaults to UTF-8 for backward compatibility.
     * @param  callback     (function, optional) callback function to be called after script is terminated
     */
    $.i18n.properties = function (settings) {

        var defaults = {
            name: 'Messages',
            language: '',
            path: '',
            mode: 'vars',
            cache: false,
            debug: false,
            encoding: 'UTF-8',
            async: false,
            callback: null
        };
        settings = $.extend(defaults, settings);

        // Try to ensure that we have at a least a two letter language code
        settings.language = this.normaliseLanguageCode(settings.language);

        // Ensure an array
        var files = (settings.name && settings.name.constructor === Array) ? settings.name : [settings.name];

        // A locale is at least a language code which means at least two files per name. If
        // we also have a country code, thats an extra file per name.
        settings.totalFiles = (files.length * 2) + ((settings.language.length >= 5) ? files.length : 0);
        if (settings.debug) {
            console.log('totalFiles: ' + settings.totalFiles);
        }

        settings.filesLoaded = 0;

        files.forEach(function (file) {

            var defaultFileName, shortFileName, longFileName;
            // 1. load base (eg, Messages.properties)
            defaultFileName = settings.path + file + '.properties';
            // 2. with language code (eg, Messages_pt.properties)
            var shortCode = settings.language.substring(0, 2);
            shortFileName = settings.path + file + '_' + shortCode + '.properties';
         
            // 3. with language code and country code (eg, Messages_pt_BR.properties)
            if (settings.language.length >= 5) {
                var longCode = settings.language.substring(0, 5);
                longFileName = settings.path + file + '_' + longCode + '.properties';
            }
       
            loadAndParseFiles([defaultFileName, shortFileName, longFileName], settings);
        });

        // call callback
        if (settings.callback && !settings.async) {
            settings.callback();
        }
    }; // properties

    /**
     * When configured with mode: 'map', allows access to bundle values by specifying its key.
     * Eg, jQuery.i18n.prop('com.company.bundles.menu_add')
     */
    $.i18n.prop = function (key /* Add parameters as function arguments as necessary  */) {

        var value = $.i18n.map[key];
    	
        if (value === null) {
            return '[' + key + ']';
        }

        var phvList;
        if (arguments.length == 2 && $.isArray(arguments[1])) {
            // An array was passed as the only parameter, so assume it is the list of place holder values.
            phvList = arguments[1];
        }

        // Place holder replacement
        /**
        * Tested with:
        *   test.t1=asdf ''{0}''
        *   test.t2=asdf '{0}' '{1}'{1}'zxcv
        *   test.t3=This is \"a quote" 'a''{0}''s'd{fgh{ij'
        *   test.t4="'''{'0}''" {0}{a}
        *   test.t5="'''{0}'''" {1}
        *   test.t6=a {1} b {0} c
        *   test.t7=a 'quoted \\ s\ttringy' \t\t x
        *
        * Produces:
        *   test.t1, p1 ==> asdf 'p1'
        *   test.t2, p1 ==> asdf {0} {1}{1}zxcv
        *   test.t3, p1 ==> This is "a quote" a'{0}'sd{fgh{ij
        *   test.t4, p1 ==> "'{0}'" p1{a}
        *   test.t5, p1 ==> "'{0}'" {1}
        *   test.t6, p1 ==> a {1} b p1 c
        *   test.t6, p1, p2 ==> a p2 b p1 c
        *   test.t6, p1, p2, p3 ==> a p2 b p1 c
        *   test.t7 ==> a quoted \ s	tringy 		 x
        */

        var i;
        if (typeof(value) == 'string') {
            // Handle escape characters. Done separately from the tokenizing loop below because escape characters are
            // active in quoted strings.
            i = 0;
            while ((i = value.indexOf('\\', i)) != -1) {
                if (value.charAt(i + 1) == 't') {
                    value = value.substring(0, i) + '\t' + value.substring((i++) + 2); // tab
                } else if (value.charAt(i + 1) == 'r') {
                    value = value.substring(0, i) + '\r' + value.substring((i++) + 2); // return
                } else if (value.charAt(i + 1) == 'n') {
                    value = value.substring(0, i) + '\n' + value.substring((i++) + 2); // line feed
                } else if (value.charAt(i + 1) == 'f') {
                    value = value.substring(0, i) + '\f' + value.substring((i++) + 2); // form feed
                } else if (value.charAt(i + 1) == '\\') {
                    value = value.substring(0, i) + '\\' + value.substring((i++) + 2); // \
                } else {
                    value = value.substring(0, i) + value.substring(i + 1); // Quietly drop the character
                }
            }

            // Lazily convert the string to a list of tokens.
            var arr = [], j, index;
            i = 0;
            while (i < value.length) {
                if (value.charAt(i) == '\'') {
                    // Handle quotes
                    if (i == value.length - 1) {
                        value = value.substring(0, i); // Silently drop the trailing quote
                    } else if (value.charAt(i + 1) == '\'') {
                        value = value.substring(0, i) + value.substring(++i); // Escaped quote
                    } else {
                        // Quoted string
                        j = i + 2;
                        while ((j = value.indexOf('\'', j)) != -1) {
                            if (j == value.length - 1 || value.charAt(j + 1) != '\'') {
                                // Found start and end quotes. Remove them
                                value = value.substring(0, i) + value.substring(i + 1, j) + value.substring(j + 1);
                                i = j - 1;
                                break;
                            } else {
                                // Found a double quote, reduce to a single quote.
                                value = value.substring(0, j) + value.substring(++j);
                            }
                        }

                        if (j == -1) {
                            // There is no end quote. Drop the start quote
                            value = value.substring(0, i) + value.substring(i + 1);
                        }
                    }
                } else if (value.charAt(i) == '{') {
                    // Beginning of an unquoted place holder.
                    j = value.indexOf('}', i + 1);
                    if (j == -1) {
                        i++; // No end. Process the rest of the line. Java would throw an exception
                    } else {
                        // Add 1 to the index so that it aligns with the function arguments.
                        index = parseInt(value.substring(i + 1, j));
                        if (!isNaN(index) && index >= 0) {
                            // Put the line thus far (if it isn't empty) into the array
                            var s = value.substring(0, i);
                            if (s !== "") {
                                arr.push(s);
                            }
                            // Put the parameter reference into the array
                            arr.push(index);
                            // Start the processing over again starting from the rest of the line.
                            i = 0;
                            value = value.substring(j + 1);
                        } else {
                            i = j + 1; // Invalid parameter. Leave as is.
                        }
                    }
                } else {
                    i++;
                }
            } // while

            // Put the remainder of the no-empty line into the array.
            if (value !== "") {
                arr.push(value);
            }
            value = arr;

            // Make the array the value for the entry.
            $.i18n.map[key] = arr;
    
        }

        if (value.length === 0) {
            return "";
        }
        if (value.length == 1 && typeof(value[0]) == "string") {
            return value[0];
        }

        var str = "";
        for (i = 0, j = value.length; i < j; i++) {
            if (typeof(value[i]) == "string") {
                str += value[i];
            } else if (phvList && value[i] < phvList.length) {
                // Must be a number
                str += phvList[value[i]];
            } else if (!phvList && value[i] + 1 < arguments.length) {
                str += arguments[value[i] + 1];
            } else {
                str += "{" + value[i] + "}";
            }
        }

        return str;
    };

    function callbackIfComplete(settings) {

        if (settings.debug) {
            console.log('callbackIfComplete()');
            console.log('totalFiles: ' + settings.totalFiles);
            console.log('filesLoaded: ' + settings.filesLoaded);
        }

        if (settings.async) {
            if (settings.filesLoaded === settings.totalFiles) {
                if (settings.callback) {
                    settings.callback();
                }
            }
        }
    }

    function loadAndParseFiles(filenames, settings) {

	    if (filenames !== null && filenames.length > 0) {
		    loadAndParseFile(filenames[0], settings, function () {
			    filenames.shift();
			    loadAndParseFiles(filenames,settings);
		    });
	    } else {
            callbackIfComplete(settings);
        }
    }

    /** Load and parse .properties files */
    function loadAndParseFile(filename, settings, next) {

        if (settings.debug) {
            console.log('loadAndParseFile()');
            console.log('totalFiles: ' + settings.totalFiles);
            console.log('filesLoaded: ' + settings.filesLoaded);
        }

  	    if (filename !== null && typeof filename !== 'undefined') {
            $.ajax({
                url: filename,
                async: settings.async,
                cache: settings.cache,
                dataType: 'text',
                success: function (data, status) {

                    if (settings.debug) {
                        console.log('Succeeded in downloading ' + filename + '.');
                    }

                    parseData(data, settings);
                    next();
                    callbackIfComplete(settings);
                },
                error: function (jqXHR, textStatus, errorThrown) {

                    if (settings.debug) {
                        console.log('Failed to download or parse ' + filename + '. errorThrown: ' + errorThrown);
                    }
                    if (jqXHR.status === 404) {
                        settings.totalFiles -= 1;
                    }
                    next();
                }
            });
        }
    }

    /** Parse .properties files */
    function parseData(data, settings) {

        var parsed = '';
        var parameters = data.split(/\n/);
        var regPlaceHolder = /(\{\d+})/g;
        var regRepPlaceHolder = /\{(\d+)}/g;
        var unicodeRE = /(\\u.{4})/ig;
        for (var i = 0, j = parameters.length; i < j; i++) {
            var test = parameters[i].trim();
            parameters[i] = parameters[i].trim();
            if (parameters[i].length > 0 && parameters[i].match("^#") != "#") { // skip comments
                var pair = parameters[i].split('=');
                if (pair.length > 0) {
                    /** Process key & value */
                    var name = decodeURI(pair[0]).trim();
                    var value = pair.length == 1 ? "" : pair[1];
                    // process multi-line values
                    while (value.match(/\\$/) == "\\") {
                        value = value.substring(0, value.length - 1);
                        value += parameters[++i].trimRight();
                    }
                    // Put values with embedded '='s back together
                    for (var s = 2; s < pair.length; s++) {
                        value += '=' + pair[s];
                    }
                    value = value.trim();

                    /** Mode: bundle keys in a map */
                    if (settings.mode == 'map' || settings.mode == 'both') {
                        // handle unicode chars possibly left out
                        var unicodeMatches = value.match(unicodeRE);
                        if (unicodeMatches) {
                            unicodeMatches.forEach(function (match) {
                                value = value.replace(match, unescapeUnicode(match));
                            });
                        }
                        // add to map
                        $.i18n.map[name] = value;
                    }

                    /** Mode: bundle keys as vars/functions */
                    if (settings.mode == 'vars' || settings.mode == 'both') {
                        value = value.replace(/"/g, '\\"'); // escape quotation mark (")

                        // make sure namespaced key exists (eg, 'some.key')
                        checkKeyNamespace(name);

                        // value with variable substitutions
                        if (regPlaceHolder.test(value)) {
                            var parts = value.split(regPlaceHolder);
                            // process function args
                            var first = true;
                            var fnArgs = '';
                            var usedArgs = [];
                            parts.forEach(function (part) {

                                if (regPlaceHolder.test(part) && (usedArgs.length === 0 || usedArgs.indexOf(part) == -1)) {
                                    if (!first) {
                                        fnArgs += ',';
                                    }
                                    fnArgs += part.replace(regRepPlaceHolder, 'v$1');
                                    usedArgs.push(part);
                                    first = false;
                                }
                            });
                            parsed += name + '=function(' + fnArgs + '){';
                            // process function body
                            var fnExpr = '"' + value.replace(regRepPlaceHolder, '"+v$1+"') + '"';
                            parsed += 'return ' + fnExpr + ';' + '};';
                            // simple value
                        } else {
                            parsed += name + '="' + value + '";';
                        }
                    } // END: Mode: bundle keys as vars/functions
                } // END: if(pair.length > 0)
            } // END: skip comments
        }
        eval(parsed);
        settings.filesLoaded += 1;
    }

    /** Make sure namespace exists (for keys with dots in name) */
    // TODO key parts that start with numbers quietly fail. i.e. month.short.1=Jan
    function checkKeyNamespace(key) {

        var regDot = /\./;
        if (regDot.test(key)) {
            var fullname = '';
            var names = key.split(/\./);
            names.forEach(function (name, i) {

                if (i > 0) {
                    fullname += '.';
                }
                fullname += name;
                if (eval('typeof ' + fullname + ' == "undefined"')) {
                    eval(fullname + '={};');
                }
            });
        }
    }

    /** Ensure language code is in the format aa_AA. */
    $.i18n.normaliseLanguageCode = function (lang) {

        if (!lang || lang.length < 2) {
            lang = (navigator.languages) ? navigator.languages[0]
                                        : (navigator.language || navigator.userLanguage /* IE */ || 'en');
        }

        lang = lang.toLowerCase();
        lang = lang.replace(/-/,"_"); // some browsers report language as en-US instead of en_US
        if (lang.length > 3) {
            lang = lang.substring(0, 3) + lang.substring(3).toUpperCase();
        }
        return lang;
    };

    /** Unescape unicode chars ('\u00e3') */
    function unescapeUnicode(str) {

        // unescape unicode codes
        var codes = [];
        var code = parseInt(str.substr(2), 16);
        if (code >= 0 && code < Math.pow(2, 16)) {
            codes.push(code);
        }
        // convert codes to text
        return codes.reduce(function (acc, val) { return acc + String.fromCharCode(val); }, '');
    }
}) (jQuery);
