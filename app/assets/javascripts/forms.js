$(document).ready(function(){
	var avatar = $("#char_avatar");
	var itIsOkayToGo = false;
	$("#character_class_name").change(function(){
		console.log($("#character_class_name option:selected").text());
		change_character_avatar($("#character_class_name option:selected").text());
	});
	
	function change_character_avatar(charType)
	{
		avatar.removeClass("char_mage");
		avatar.removeClass("char_warrior");
		avatar.removeClass("char_rogue");
		avatar.addClass("char_"+charType.toLowerCase());
	}
	check_total_stat_value();
	$('#og_stamina, #og_strength, #og_intellect, #og_agility, #og_spirit').bind('keyup mouseup change',function(e){
	     check_total_stat_value();
	});
	
	function check_total_stat_value(){
		var inputs = [$("#og_stamina"),$("#og_strength"),$("#og_intellect"),$("#og_agility"), $("#og_spirit")];
		var total = 0;
		for (var i=0; i<inputs.length; i++)
		{
			total += parseInt(inputs[i].attr("value"));
			
		}
		$("#remaining_points").text(10-total);
		if (total > 11)
		{
			itIsOkayToGo =  false;
		}
		else {
			itIsOkayToGo = true;
		}
		
	}

	$("#createcharbtn").click(function(e){
		if (itIsOkayToGo == false )
		{
			console.log("b!");
			return false;
		}
		else if (($("#player_character_name").attr("value") == "") == true)
		{
			console.log("cant_go!");
			return false;
		}
		else
		{
			
		}
	});
	$("#createcharbtn").submit(function(e){
		e.preventDefault();
		return false;
		if ($("#og_stamina").attr("value") == 2){
			
		}
	});
});	