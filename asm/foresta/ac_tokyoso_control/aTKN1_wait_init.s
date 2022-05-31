lbl_804AB024:
/* 804AB024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB028  7C 08 02 A6 */	mflr r0
/* 804AB02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB030  38 00 00 00 */	li r0, 0
/* 804AB034  98 03 07 F5 */	stb r0, 0x7f5(r3)
/* 804AB038  4B FF FF B5 */	bl aTKN1_normal_wait_init
/* 804AB03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB040  7C 08 03 A6 */	mtlr r0
/* 804AB044  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB048  4E 80 00 20 */	blr 
