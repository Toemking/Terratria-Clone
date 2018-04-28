if global.over_gun and mouse_check_button_pressed(mb_left){
	draw = !draw
}
if !draw{
	barLevel[0]=augment[0]
	barLevel[1]=augment[1]
	barLevel[2]=augment[2]
	tempXp=global.xp
}
for(var i=0;i<3;i++){
	pluDown[i]=mouse_check_button(mb_left) and mouseOver(camera_get_view_x(view_camera[0])+global.upX+pluX+bboxLeft[0],camera_get_view_y(view_camera[0])+global.upY+allY[i]+bboxTop[0],bboxRight[0],bboxBottom[0])
	minDown[i]=mouse_check_button(mb_left) and mouseOver(camera_get_view_x(view_camera[0])+global.upX+minX+bboxLeft[0],camera_get_view_y(view_camera[0])+global.upY+allY[i]+bboxTop[0],bboxRight[0],bboxBottom[0])
	propXP=tempXp-pluDown[i]+minDown[i]
	if (pluDown[i] or minDown[i]) and mouse_check_button_pressed(mb_left){
		proposed[0]=barLevel[0]+pluDown[i]-minDown[i]
		proposed[1]=barLevel[1]+pluDown[i]-minDown[i]
		proposed[2]=barLevel[2]+pluDown[i]-minDown[i]
		switch(i){
			case 0:
				if proposed[0]>=0 and proposed[0]<=5 and propXP>=0 and propXP<=global.xp and (barLevel[0]-minDown[i])>=augment[0]{
					barLevel[0]=proposed[0]
					tempXp-=pluDown[i]
					tempXp+=minDown[i]
				}
				break
			case 1:
				if proposed[1]>=0 and proposed[1]<=5 and propXP>=0 and propXP<=global.xp and (barLevel[1]-minDown[i])>=augment[1]{
					barLevel[1]=proposed[1]
					tempXp-=pluDown[i]
					tempXp+=minDown[i]
				}
				break
			case 2:
				if proposed[2]>=0 and proposed[2]<=5 and propXP>=0 and propXP<=global.xp and (barLevel[2]-minDown[i])>=augment[2]{
					barLevel[2]=proposed[2]
					tempXp-=pluDown[i]
					tempXp+=minDown[i]
				}
				break
		}
	}
}

appDown=mouse_check_button(mb_left) and mouseOver(camera_get_view_x(view_camera[0])+global.upX+appX+bboxLeft[1],camera_get_view_y(view_camera[0])+global.upY+appY+bboxTop[1],bboxRight[1],bboxBottom[1])

if appDown and mouse_check_button_pressed(mb_left){
	augment[0]=barLevel[0]
	augment[1]=barLevel[1]
	augment[2]=barLevel[2]
	global.xp=tempXp
}

for(var m=0;m<3;m++){
	if(propXP<global.xp and barLevel[m]>augment[m]){
		gray[0,m]=false
	}
	else{
		gray[0,m]=true
	}
	if(barLevel[m]<5 and tempXp>0){
		gray[1,m]=false
	}
	else{
		gray[1,m]=true
	}
}
x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])