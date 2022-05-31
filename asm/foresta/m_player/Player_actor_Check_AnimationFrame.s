lbl_804D7600:
/* 804D7600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7604  7C 08 02 A6 */	mflr r0
/* 804D7608  FC 80 08 90 */	fmr f4, f1
/* 804D760C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7610  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804D7614  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 804D7618  C0 63 00 04 */	lfs f3, 4(r3)
/* 804D761C  4B FF FE D5 */	bl Player_actor_Check_AnimationFrame_Common
/* 804D7620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7624  7C 08 03 A6 */	mtlr r0
/* 804D7628  38 21 00 10 */	addi r1, r1, 0x10
/* 804D762C  4E 80 00 20 */	blr 
