lbl_803B9F34:
/* 803B9F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9F38  7C 08 02 A6 */	mflr r0
/* 803B9F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9F44  7C 9F 23 78 */	mr r31, r4
/* 803B9F48  4B FF FF 9D */	bl mEnv_GetWindPowerTableTerm
/* 803B9F4C  3C 80 80 65 */	lis r4, error_data@ha /* 0x806563B0@ha */
/* 803B9F50  2C 03 00 00 */	cmpwi r3, 0
/* 803B9F54  38 A4 63 B0 */	addi r5, r4, error_data@l /* 0x806563B0@l */
/* 803B9F58  80 85 00 00 */	lwz r4, 0(r5)
/* 803B9F5C  80 05 00 04 */	lwz r0, 4(r5)
/* 803B9F60  90 9F 00 00 */	stw r4, 0(r31)
/* 803B9F64  90 1F 00 04 */	stw r0, 4(r31)
/* 803B9F68  80 05 00 08 */	lwz r0, 8(r5)
/* 803B9F6C  90 1F 00 08 */	stw r0, 8(r31)
/* 803B9F70  41 80 00 3C */	blt lbl_803B9FAC
/* 803B9F74  28 03 00 04 */	cmplwi r3, 4
/* 803B9F78  40 80 00 34 */	bge lbl_803B9FAC
/* 803B9F7C  1C A3 00 0C */	mulli r5, r3, 0xc
/* 803B9F80  3C 80 80 65 */	lis r4, pow_table@ha /* 0x80656374@ha */
/* 803B9F84  38 60 00 01 */	li r3, 1
/* 803B9F88  38 04 63 74 */	addi r0, r4, pow_table@l /* 0x80656374@l */
/* 803B9F8C  7C A0 2A 14 */	add r5, r0, r5
/* 803B9F90  80 85 00 00 */	lwz r4, 0(r5)
/* 803B9F94  80 05 00 04 */	lwz r0, 4(r5)
/* 803B9F98  90 9F 00 00 */	stw r4, 0(r31)
/* 803B9F9C  90 1F 00 04 */	stw r0, 4(r31)
/* 803B9FA0  80 05 00 08 */	lwz r0, 8(r5)
/* 803B9FA4  90 1F 00 08 */	stw r0, 8(r31)
/* 803B9FA8  48 00 00 08 */	b lbl_803B9FB0
lbl_803B9FAC:
/* 803B9FAC  38 60 00 00 */	li r3, 0
lbl_803B9FB0:
/* 803B9FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9FB8  7C 08 03 A6 */	mtlr r0
/* 803B9FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9FC0  4E 80 00 20 */	blr 
