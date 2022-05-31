lbl_803A7EDC:
/* 803A7EDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A7EE0  7C 08 02 A6 */	mflr r0
/* 803A7EE4  3C C0 81 16 */	lis r6, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7EE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A7EEC  38 00 00 01 */	li r0, 1
/* 803A7EF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803A7EF4  7C BF 2B 78 */	mr r31, r5
/* 803A7EF8  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A7EFC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803A7F00  7C 7E 1B 78 */	mr r30, r3
/* 803A7F04  38 61 00 0C */	addi r3, r1, 0xc
/* 803A7F08  80 C6 7A 58 */	lwz r6, g_fdinfo@l(r6)  /* 0x81167A58@l */
/* 803A7F0C  98 06 00 91 */	stb r0, 0x91(r6)
/* 803A7F10  80 E4 00 00 */	lwz r7, 0(r4)
/* 803A7F14  80 C4 00 04 */	lwz r6, 4(r4)
/* 803A7F18  80 04 00 08 */	lwz r0, 8(r4)
/* 803A7F1C  38 81 00 08 */	addi r4, r1, 8
/* 803A7F20  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803A7F24  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A7F28  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A7F2C  4B FF D8 35 */	bl mFI_Wpos2BlockNum
/* 803A7F30  2C 1F 00 00 */	cmpwi r31, 0
/* 803A7F34  40 82 00 1C */	bne lbl_803A7F50
/* 803A7F38  38 60 FF FF */	li r3, -1
/* 803A7F3C  38 00 00 00 */	li r0, 0
/* 803A7F40  98 7E 00 F4 */	stb r3, 0xf4(r30)
/* 803A7F44  98 7E 00 F5 */	stb r3, 0xf5(r30)
/* 803A7F48  90 1E 01 00 */	stw r0, 0x100(r30)
/* 803A7F4C  48 00 00 14 */	b lbl_803A7F60
lbl_803A7F50:
/* 803A7F50  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 803A7F54  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 803A7F58  38 A0 00 10 */	li r5, 0x10
/* 803A7F5C  48 01 2A C9 */	bl func_803BAA24
lbl_803A7F60:
/* 803A7F60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A7F64  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 803A7F68  80 A1 00 08 */	lwz r5, 8(r1)
/* 803A7F6C  4B FF FB 11 */	bl mFI_SetBlockTable
/* 803A7F70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A7F74  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803A7F78  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803A7F7C  7C 08 03 A6 */	mtlr r0
/* 803A7F80  38 21 00 30 */	addi r1, r1, 0x30
/* 803A7F84  4E 80 00 20 */	blr 
