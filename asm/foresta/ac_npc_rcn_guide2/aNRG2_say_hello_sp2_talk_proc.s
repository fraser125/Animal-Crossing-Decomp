lbl_80570AA0:
/* 80570AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570AA4  7C 08 02 A6 */	mflr r0
/* 80570AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570AAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570AB0  7C 7F 1B 78 */	mr r31, r3
/* 80570AB4  4B E4 EB F5 */	bl func_803BF6A8
/* 80570AB8  4B E4 F5 15 */	bl mMsg_Get_msg_num
/* 80570ABC  2C 03 08 37 */	cmpwi r3, 0x837
/* 80570AC0  40 82 00 0C */	bne lbl_80570ACC
/* 80570AC4  7F E3 FB 78 */	mr r3, r31
/* 80570AC8  4B FF FE AD */	bl aNRG2_say_hello_talk_proc
lbl_80570ACC:
/* 80570ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570AD4  7C 08 03 A6 */	mtlr r0
/* 80570AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80570ADC  4E 80 00 20 */	blr 
