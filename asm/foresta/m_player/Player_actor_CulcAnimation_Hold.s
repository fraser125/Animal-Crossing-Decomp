lbl_804EA020:
/* 804EA020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA024  7C 08 02 A6 */	mflr r0
/* 804EA028  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA02C  38 81 00 08 */	addi r4, r1, 8
/* 804EA030  4B FE C5 59 */	bl Player_actor_CulcAnimation_Base2
/* 804EA034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA038  7C 08 03 A6 */	mtlr r0
/* 804EA03C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA040  4E 80 00 20 */	blr 
