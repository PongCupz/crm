
<span class="dateTime">
{assign var=date_value value=$fields.birthdate.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.birthdate.name}" id="{$fields.birthdate.name}" value="{$date_value}" title=''  tabindex='1'    size="11" maxlength="10" >
    <button type="button" id="{$fields.birthdate.name}_trigger" class="btn btn-danger" onclick="return false;"><span class="suitepicon suitepicon-module-calendar" alt="{$APP.LBL_ENTER_DATE}"></span></button>
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.birthdate.name}",
form : "",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.birthdate.name}_trigger",
singleClick : true,
dateStr : "{$date_value}",
startWeekday: {$CALENDAR_FDOW|default:'0'},
step : 1,
weekNumbers:false
{rdelim}
);
</script>
