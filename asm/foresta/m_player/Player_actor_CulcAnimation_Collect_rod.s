lbl_804F5D5C:
/* 804F5D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5D60  7C 08 02 A6 */	mflr r0
/* 804F5D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5D68  4B FE 08 21 */	bl Player_actor_CulcAnimation_Base2
/* 804F5D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5D70  7C 08 03 A6 */	mtlr r0
/* 804F5D74  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5D78  4E 80 00 20 */	blr 
