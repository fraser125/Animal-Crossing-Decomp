lbl_803E4EFC:
/* 803E4EFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E4F00  7C 08 02 A6 */	mflr r0
/* 803E4F04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E4F08  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E4F0C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E4F10  3C E5 00 02 */	addis r7, r5, 2
/* 803E4F14  38 61 00 0C */	addi r3, r1, 0xc
/* 803E4F18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E4F1C  38 81 00 08 */	addi r4, r1, 8
/* 803E4F20  3C A0 80 00 */	lis r5, 0x8000
/* 803E4F24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E4F28  88 C7 3E 08 */	lbz r6, 0x3e08(r7)
/* 803E4F2C  88 07 3E 09 */	lbz r0, 0x3e09(r7)
/* 803E4F30  54 C7 07 BE */	clrlwi r7, r6, 0x1e
/* 803E4F34  54 06 07 BE */	clrlwi r6, r0, 0x1e
/* 803E4F38  38 E7 00 74 */	addi r7, r7, 0x74
/* 803E4F3C  38 06 00 70 */	addi r0, r6, 0x70
/* 803E4F40  54 FF 04 3E */	clrlwi r31, r7, 0x10
/* 803E4F44  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 803E4F48  4B FC 14 B9 */	bl mFI_BlockKind2BkNum
/* 803E4F4C  2C 03 00 00 */	cmpwi r3, 0
/* 803E4F50  41 82 00 70 */	beq lbl_803E4FC0
/* 803E4F54  7F E3 FB 78 */	mr r3, r31
/* 803E4F58  38 80 00 62 */	li r4, 0x62
/* 803E4F5C  4B FF FF 45 */	bl mRF_FindBgNameTypeCombiNum
/* 803E4F60  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 803E4F64  7F C3 F3 78 */	mr r3, r30
/* 803E4F68  38 80 00 63 */	li r4, 0x63
/* 803E4F6C  4B FF FF 35 */	bl mRF_FindBgNameTypeCombiNum
/* 803E4F70  80 01 00 08 */	lwz r0, 8(r1)
/* 803E4F74  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E4F78  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 803E4F7C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E4F80  1C C0 00 0E */	mulli r6, r0, 0xe
/* 803E4F84  54 68 04 3E */	clrlwi r8, r3, 0x10
/* 803E4F88  54 E3 08 3C */	slwi r3, r7, 1
/* 803E4F8C  38 07 00 01 */	addi r0, r7, 1
/* 803E4F90  3C 83 00 01 */	addis r4, r3, 1
/* 803E4F94  7C A5 32 14 */	add r5, r5, r6
/* 803E4F98  54 03 08 3C */	slwi r3, r0, 1
/* 803E4F9C  38 84 73 A8 */	addi r4, r4, 0x73a8
/* 803E4FA0  7C 05 22 2E */	lhzx r0, r5, r4
/* 803E4FA4  53 E0 14 3A */	rlwimi r0, r31, 2, 0x10, 0x1d
/* 803E4FA8  3C 63 00 01 */	addis r3, r3, 1
/* 803E4FAC  7C 05 23 2E */	sthx r0, r5, r4
/* 803E4FB0  38 63 73 A8 */	addi r3, r3, 0x73a8
/* 803E4FB4  7C 05 1A 2E */	lhzx r0, r5, r3
/* 803E4FB8  51 00 14 3A */	rlwimi r0, r8, 2, 0x10, 0x1d
/* 803E4FBC  7C 05 1B 2E */	sthx r0, r5, r3
lbl_803E4FC0:
/* 803E4FC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E4FC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E4FC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E4FCC  7C 08 03 A6 */	mtlr r0
/* 803E4FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E4FD4  4E 80 00 20 */	blr 
