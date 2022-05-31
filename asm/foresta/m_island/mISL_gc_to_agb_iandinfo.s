lbl_803B43A0:
/* 803B43A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B43A4  7C 08 02 A6 */	mflr r0
/* 803B43A8  38 A0 00 08 */	li r5, 8
/* 803B43AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B43B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B43B4  7C 9F 23 78 */	mr r31, r4
/* 803B43B8  93 C1 00 08 */	stw r30, 8(r1)
/* 803B43BC  7C 7E 1B 78 */	mr r30, r3
/* 803B43C0  7F E3 FB 78 */	mr r3, r31
/* 803B43C4  7F C4 F3 78 */	mr r4, r30
/* 803B43C8  4B CA 8C 55 */	bl func_8005D01C
/* 803B43CC  88 1F 00 08 */	lbz r0, 8(r31)
/* 803B43D0  38 7E 00 0A */	addi r3, r30, 0xa
/* 803B43D4  38 9F 00 0A */	addi r4, r31, 0xa
/* 803B43D8  38 A0 00 01 */	li r5, 1
/* 803B43DC  98 1E 00 08 */	stb r0, 8(r30)
/* 803B43E0  4B FF FD 3D */	bl mISL_short
/* 803B43E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B43E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B43EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B43F0  7C 08 03 A6 */	mtlr r0
/* 803B43F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B43F8  4E 80 00 20 */	blr 
