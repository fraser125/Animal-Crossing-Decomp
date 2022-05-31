lbl_803B8EF0:
/* 803B8EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B8EF4  7C 08 02 A6 */	mflr r0
/* 803B8EF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B8EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B8F00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B8F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B8F08  3F E3 00 02 */	addis r31, r3, 2
/* 803B8F0C  88 1F 41 87 */	lbz r0, 0x4187(r31)
/* 803B8F10  28 00 00 00 */	cmplwi r0, 0
/* 803B8F14  41 82 00 B0 */	beq lbl_803B8FC4
/* 803B8F18  4B FE BD 79 */	bl mFI_CheckFieldData
/* 803B8F1C  2C 03 00 00 */	cmpwi r3, 0
/* 803B8F20  41 82 00 A4 */	beq lbl_803B8FC4
/* 803B8F24  4B FE BD A9 */	bl mFI_GetFieldId
/* 803B8F28  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803B8F2C  40 82 00 98 */	bne lbl_803B8FC4
/* 803B8F30  4B FE 1F 89 */	bl mEv_CheckTitleDemo
/* 803B8F34  2C 03 00 00 */	cmpwi r3, 0
/* 803B8F38  41 81 00 8C */	bgt lbl_803B8FC4
/* 803B8F3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B8F40  38 C3 85 38 */	addi r6, r3, common_data@l /* 0x81138538@l */
/* 803B8F44  3C 86 00 02 */	addis r4, r6, 2
/* 803B8F48  88 64 61 25 */	lbz r3, 0x6125(r4)
/* 803B8F4C  88 04 41 85 */	lbz r0, 0x4185(r4)
/* 803B8F50  7C 03 00 40 */	cmplw r3, r0
/* 803B8F54  40 82 00 70 */	bne lbl_803B8FC4
/* 803B8F58  88 64 61 23 */	lbz r3, 0x6123(r4)
/* 803B8F5C  88 04 41 86 */	lbz r0, 0x4186(r4)
/* 803B8F60  7C 03 00 40 */	cmplw r3, r0
/* 803B8F64  40 82 00 60 */	bne lbl_803B8FC4
/* 803B8F68  80 A4 61 1C */	lwz r5, 0x611c(r4)
/* 803B8F6C  2C 05 7E 90 */	cmpwi r5, 0x7e90
/* 803B8F70  41 80 00 54 */	blt lbl_803B8FC4
/* 803B8F74  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D2F0@ha */
/* 803B8F78  38 03 D2 F0 */	addi r0, r3, 0xD2F0 /* 0x0000D2F0@l */
/* 803B8F7C  7C 05 00 00 */	cmpw r5, r0
/* 803B8F80  40 80 00 44 */	bge lbl_803B8FC4
/* 803B8F84  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 803B8F88  28 00 00 01 */	cmplwi r0, 1
/* 803B8F8C  40 82 00 38 */	bne lbl_803B8FC4
/* 803B8F90  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B8F94  3C 80 80 64 */	lis r4, lit_1558@ha /* 0x80642530@ha */
/* 803B8F98  38 A3 24 4C */	addi r5, r3, lit_545@l /* 0x8064244C@l */
/* 803B8F9C  C0 44 25 30 */	lfs f2, lit_1558@l(r4)  /* 0x80642530@l */
/* 803B8FA0  3C 66 00 03 */	addis r3, r6, 3
/* 803B8FA4  C0 25 00 00 */	lfs f1, 0(r5)
/* 803B8FA8  38 63 DB B4 */	addi r3, r3, -9292
/* 803B8FAC  48 00 1C BD */	bl chase_f
/* 803B8FB0  2C 03 00 00 */	cmpwi r3, 0
/* 803B8FB4  41 82 00 3C */	beq lbl_803B8FF0
/* 803B8FB8  38 00 00 00 */	li r0, 0
/* 803B8FBC  98 1F 41 87 */	stb r0, 0x4187(r31)
/* 803B8FC0  48 00 00 30 */	b lbl_803B8FF0
lbl_803B8FC4:
/* 803B8FC4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803B8FC8  3C 80 80 64 */	lis r4, lit_544@ha /* 0x80642448@ha */
/* 803B8FCC  3C 60 80 64 */	lis r3, lit_1559@ha /* 0x80642534@ha */
/* 803B8FD0  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 803B8FD4  38 A4 24 48 */	addi r5, r4, lit_544@l /* 0x80642448@l */
/* 803B8FD8  38 83 25 34 */	addi r4, r3, lit_1559@l /* 0x80642534@l */
/* 803B8FDC  C0 25 00 00 */	lfs f1, 0(r5)
/* 803B8FE0  3C 66 00 03 */	addis r3, r6, 3
/* 803B8FE4  C0 44 00 00 */	lfs f2, 0(r4)
/* 803B8FE8  38 63 DB B4 */	addi r3, r3, -9292
/* 803B8FEC  48 00 1C 7D */	bl chase_f
lbl_803B8FF0:
/* 803B8FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B8FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B8FF8  7C 08 03 A6 */	mtlr r0
/* 803B8FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9000  4E 80 00 20 */	blr 
