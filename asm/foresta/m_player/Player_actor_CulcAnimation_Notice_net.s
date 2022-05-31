lbl_804F4304:
/* 804F4304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4308  7C 08 02 A6 */	mflr r0
/* 804F430C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4310  38 81 00 08 */	addi r4, r1, 8
/* 804F4314  4B FE 22 75 */	bl Player_actor_CulcAnimation_Base2
/* 804F4318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F431C  7C 08 03 A6 */	mtlr r0
/* 804F4320  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4324  4E 80 00 20 */	blr 
