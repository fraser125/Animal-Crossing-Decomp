lbl_804EC474:
/* 804EC474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC478  7C 08 02 A6 */	mflr r0
/* 804EC47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EC484  7C 9F 23 78 */	mr r31, r4
/* 804EC488  7F E5 FB 78 */	mr r5, r31
/* 804EC48C  38 80 00 1B */	li r4, 0x1b
/* 804EC490  93 C1 00 08 */	stw r30, 8(r1)
/* 804EC494  7C 7E 1B 78 */	mr r30, r3
/* 804EC498  4B FE DF C1 */	bl Player_actor_check_request_main_able
/* 804EC49C  2C 03 00 00 */	cmpwi r3, 0
/* 804EC4A0  41 82 00 2C */	beq lbl_804EC4CC
/* 804EC4A4  7F C3 F3 78 */	mr r3, r30
/* 804EC4A8  4B FF FF 7D */	bl func_804EC424
/* 804EC4AC  2C 03 00 00 */	cmpwi r3, 0
/* 804EC4B0  41 82 00 1C */	beq lbl_804EC4CC
/* 804EC4B4  7F C3 F3 78 */	mr r3, r30
/* 804EC4B8  7F E5 FB 78 */	mr r5, r31
/* 804EC4BC  38 80 00 1B */	li r4, 0x1b
/* 804EC4C0  4B FE 8B 55 */	bl Player_actor_request_main_index
/* 804EC4C4  38 60 00 01 */	li r3, 1
/* 804EC4C8  48 00 00 08 */	b lbl_804EC4D0
lbl_804EC4CC:
/* 804EC4CC  38 60 00 00 */	li r3, 0
lbl_804EC4D0:
/* 804EC4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC4D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EC4D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EC4DC  7C 08 03 A6 */	mtlr r0
/* 804EC4E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC4E4  4E 80 00 20 */	blr 
