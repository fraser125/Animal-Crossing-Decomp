lbl_804F528C:
/* 804F528C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5290  7C 08 02 A6 */	mflr r0
/* 804F5294  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5298  4B FE 12 F1 */	bl Player_actor_CulcAnimation_Base2
/* 804F529C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F52A0  7C 08 03 A6 */	mtlr r0
/* 804F52A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F52A8  4E 80 00 20 */	blr 
