lbl_804AB59C:
/* 804AB59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB5A0  7C 08 02 A6 */	mflr r0
/* 804AB5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB5A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB5AC  7C 7F 1B 78 */	mr r31, r3
/* 804AB5B0  4B FF FA 3D */	bl aTKN1_normal_wait_init
/* 804AB5B4  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 804AB5B8  60 00 00 14 */	ori r0, r0, 0x14
/* 804AB5BC  90 1F 08 40 */	stw r0, 0x840(r31)
/* 804AB5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB5C8  7C 08 03 A6 */	mtlr r0
/* 804AB5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB5D0  4E 80 00 20 */	blr 
