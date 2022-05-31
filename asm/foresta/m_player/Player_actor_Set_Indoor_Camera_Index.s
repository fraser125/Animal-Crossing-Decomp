lbl_804DF0C8:
/* 804DF0C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DF0CC  7C 08 02 A6 */	mflr r0
/* 804DF0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DF0D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804DF0D8  4B BB BD FD */	bl func_8009AED4
/* 804DF0DC  7C 9D 23 78 */	mr r29, r4
/* 804DF0E0  4B FF FF 59 */	bl Player_actor_check_able_change_camera_normal_index
/* 804DF0E4  2C 03 00 00 */	cmpwi r3, 0
/* 804DF0E8  41 82 00 A4 */	beq lbl_804DF18C
/* 804DF0EC  83 FD 1B E0 */	lwz r31, 0x1be0(r29)
/* 804DF0F0  38 60 00 08 */	li r3, 8
/* 804DF0F4  83 DD 1B E4 */	lwz r30, 0x1be4(r29)
/* 804DF0F8  4B EB 6E 19 */	bl chkTrigger
/* 804DF0FC  2C 03 00 00 */	cmpwi r3, 0
/* 804DF100  41 82 00 1C */	beq lbl_804DF11C
/* 804DF104  34 1F FF FF */	addic. r0, r31, -1
/* 804DF108  41 80 00 38 */	blt lbl_804DF140
/* 804DF10C  38 1F FF FF */	addi r0, r31, -1
/* 804DF110  90 1D 1B E0 */	stw r0, 0x1be0(r29)
/* 804DF114  48 00 09 69 */	bl Player_actor_sound_camera_move1
/* 804DF118  48 00 00 28 */	b lbl_804DF140
lbl_804DF11C:
/* 804DF11C  38 60 00 04 */	li r3, 4
/* 804DF120  4B EB 6D F1 */	bl chkTrigger
/* 804DF124  2C 03 00 00 */	cmpwi r3, 0
/* 804DF128  41 82 00 18 */	beq lbl_804DF140
/* 804DF12C  38 1F 00 01 */	addi r0, r31, 1
/* 804DF130  2C 00 00 03 */	cmpwi r0, 3
/* 804DF134  40 80 00 0C */	bge lbl_804DF140
/* 804DF138  90 1D 1B E0 */	stw r0, 0x1be0(r29)
/* 804DF13C  48 00 09 65 */	bl Player_actor_sound_camera_move2
lbl_804DF140:
/* 804DF140  38 60 00 02 */	li r3, 2
/* 804DF144  4B EB 6D CD */	bl chkTrigger
/* 804DF148  2C 03 00 00 */	cmpwi r3, 0
/* 804DF14C  41 82 00 1C */	beq lbl_804DF168
/* 804DF150  34 1E FF FF */	addic. r0, r30, -1
/* 804DF154  41 80 00 38 */	blt lbl_804DF18C
/* 804DF158  38 1E FF FF */	addi r0, r30, -1
/* 804DF15C  90 1D 1B E4 */	stw r0, 0x1be4(r29)
/* 804DF160  48 00 09 1D */	bl Player_actor_sound_camera_move1
/* 804DF164  48 00 00 28 */	b lbl_804DF18C
lbl_804DF168:
/* 804DF168  38 60 00 01 */	li r3, 1
/* 804DF16C  4B EB 6D A5 */	bl chkTrigger
/* 804DF170  2C 03 00 00 */	cmpwi r3, 0
/* 804DF174  41 82 00 18 */	beq lbl_804DF18C
/* 804DF178  38 1E 00 01 */	addi r0, r30, 1
/* 804DF17C  2C 00 00 03 */	cmpwi r0, 3
/* 804DF180  40 80 00 0C */	bge lbl_804DF18C
/* 804DF184  90 1D 1B E4 */	stw r0, 0x1be4(r29)
/* 804DF188  48 00 08 F5 */	bl Player_actor_sound_camera_move1
lbl_804DF18C:
/* 804DF18C  39 61 00 20 */	addi r11, r1, 0x20
/* 804DF190  4B BB BD 91 */	bl func_8009AF20
/* 804DF194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DF198  7C 08 03 A6 */	mtlr r0
/* 804DF19C  38 21 00 20 */	addi r1, r1, 0x20
/* 804DF1A0  4E 80 00 20 */	blr 
