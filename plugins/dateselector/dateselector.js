/*
* jQuery Date Selector Plugin
* 日期联动选择插件
* 方配
* Demo:
$("#calendar").DateSelector({
ctlYearId: <年控件id>,
ctlMonthId: <月控件id>,
ctlDayId: <日控件id>,
minYear: <最小年|默认为1900年>,
maxYear: <最大年|默认为本年>
});

HTML:<div id="calendar"><SELECT id=idYear data=''></SELECT>年 <SELECT id=idMonth data=''></SELECT>月 <SELECT id=idDay data=''></SELECT>日</div>
*/
(function ($) {
    //月日SELECT控件设置函数
    function setSelectControl(oSelect, iStart, iLength, iIndex) {
        oSelect.empty();
		oSelect.append("<option value=''>请选择</option>");
        for (var i = 0; i < iLength; i++) {
            if ((parseInt(iStart) + i) == iIndex)
                oSelect.append("<option selected='selected' value='" + (parseInt(iStart) + i) + "'>" + (parseInt(iStart) + i) + "</option>");
            else
                oSelect.append("<option value='" + (parseInt(iStart) + i) + "'>" + (parseInt(iStart) + i) + "</option>");
        }
    }
	
	//年SELECT控件设置函数
    function setYearSelect(oSelect, iStart, iLength, iIndex) {
        oSelect.empty();
		oSelect.append("<option value=''>请选择</option>");
        for (var i = iLength-1; i > 0; i--) {
            if ((parseInt(iStart) + i) == iIndex)
                oSelect.append("<option selected='selected' value='" + (parseInt(iStart) + i) + "'>" + (parseInt(iStart) + i) + "</option>");
            else
                oSelect.append("<option value='" + (parseInt(iStart) + i) + "'>" + (parseInt(iStart) + i) + "</option>");
        }
    }

    $.fn.DateSelector = function (options) {
        options = options || {};

        //初始化
        this._options = {
            ctlYearId: null,
            ctlMonthId: null,
            ctlDayId: null,
            minYear: 1900,
            maxYear: new Date().getFullYear()
        }

        for (var property in options) {
            this._options[property] = options[property];
        }

        this.yearValueId = $("#" + this._options.ctlYearId);
        this.monthValueId = $("#" + this._options.ctlMonthId);
        this.dayValueId = $("#" + this._options.ctlDayId);

        var dt = new Date(),
        iMonth = parseInt(this.monthValueId.attr("data")),
        iDay = parseInt(this.dayValueId.attr("data")),
        iMinYear = parseInt(this._options.minYear),
        iMaxYear = parseInt(this._options.maxYear);

        this.Year = parseInt(this.yearValueId.attr("data"));
        this.Month = 1 <= iMonth && iMonth <= 12 ? iMonth : '';
        this.Day = iDay > 0 ? iDay : '';
        this.minYear = iMinYear;
        this.maxYear = iMaxYear;

        //初始化控件
        //设置年
        setYearSelect(this.yearValueId, this.minYear, this.maxYear - this.minYear + 1, this.Year);
        //设置月
        setSelectControl(this.monthValueId, 1, 12, this.Month);
        //设置日
        var daysInMonth = new Date(this.Year, this.Month, 0).getDate(); //获取指定年月的当月天数[new Date(year, month, 0).getDate()]
        if (this.Day > daysInMonth) { this.Day = daysInMonth; };
        setSelectControl(this.dayValueId, 1, daysInMonth, this.Day);

        var oThis = this;
        //绑定控件事件
        this.yearValueId.change(function () {
            oThis.Year = $(this).val();
			if(oThis.Year=='')
			{
				oThis.Month='';
				oThis.Day='';
			}
            setSelectControl(oThis.monthValueId, 1, 12, oThis.Month);
            oThis.monthValueId.change();
        });
        this.monthValueId.change(function () {
            oThis.Month = $(this).val();
			if(oThis.Month=='')
			{
				oThis.Day='';
			}
            var daysInMonth = new Date(oThis.Year, oThis.Month, 0).getDate();
            if (oThis.Day > daysInMonth) { oThis.Day = daysInMonth; };
            setSelectControl(oThis.dayValueId, 1, daysInMonth, oThis.Day);
        });
        this.dayValueId.change(function () {
            oThis.Day = $(this).val();
        });
    }
})(jQuery);