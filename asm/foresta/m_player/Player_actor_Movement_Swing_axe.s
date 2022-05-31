lbl_804EFC54:
/* 804EFC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EFC58  7C 08 02 A6 */	mflr r0
/* 804EFC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EFC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EFC64  7C 7F 1B 78 */	mr r31, r3
/* 804EFC68  4B FF FE F5 */	bl Player_actor_Movement_axe_common
/* 804EFC6C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804EFC70  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804EFC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EFC78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EFC7C  7C 08 03 A6 */	mtlr r0
/* 804EFC80  38 21 00 10 */	addi r1, r1, 0x10
/* 804EFC84  4E 80 00 20 */	blr 
