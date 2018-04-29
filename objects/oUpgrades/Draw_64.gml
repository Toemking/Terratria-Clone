if draw{
	draw_sprite(sUpgrades,0,global.upX,global.upY)
	color=draw_get_color()
	draw_set_color(c_white)
	draw_text(global.upX+textX[3],global.upY+textY[3],"XP: "+string(tempXp))
	draw_sprite(sApply,appDown,global.upX+appX,global.upY+appY)
	for(var d=0;d<3;d++){
		draw_text(global.upX+textX[d],global.upY+textY[d],text[d])
		draw_sprite(sLevelBar,barLevel[d],global.upX+barX,global.upY+allY[d])
		if(!gray[0,d]){
			draw_sprite(sPluMin,minDown[d],global.upX+minX,global.upY+allY[d])
		}
		else{
			draw_sprite(sPluMin,2,global.upX+minX,global.upY+allY[d])
		}
		if(!gray[1,d]){
			draw_sprite(sPluMin,3+pluDown[d],global.upX+pluX,global.upY+allY[d])
		}
		else{
			draw_sprite(sPluMin,5,global.upX+pluX,global.upY+allY[d])
		}
	}
	draw_set_color(color)
}
