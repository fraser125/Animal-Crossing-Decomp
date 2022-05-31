lbl_804F0300:
/* 804F0300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0304  7C 08 02 A6 */	mflr r0
/* 804F0308  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F030C  A0 84 00 0E */	lhz r4, 0xe(r4)
/* 804F0310  4B FF FF 0D */	bl Player_actor_ChangeItemNo_axe_common
/* 804F0314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0318  7C 08 03 A6 */	mtlr r0
/* 804F031C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0320  4E 80 00 20 */	blr 
