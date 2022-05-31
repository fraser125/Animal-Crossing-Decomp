lbl_80539784:
/* 80539784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80539788  7C 08 02 A6 */	mflr r0
/* 8053978C  2C 03 00 0F */	cmpwi r3, 0xf
/* 80539790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80539794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80539798  3B E0 00 00 */	li r31, 0
/* 8053979C  93 C1 00 08 */	stw r30, 8(r1)
/* 805397A0  40 80 00 5C */	bge lbl_805397FC
/* 805397A4  2C 03 FF F1 */	cmpwi r3, -15
/* 805397A8  40 82 00 18 */	bne lbl_805397C0
/* 805397AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805397B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805397B4  3F C3 00 02 */	addis r30, r3, 2
/* 805397B8  3B DE 34 40 */	addi r30, r30, 0x3440
/* 805397BC  48 00 00 1C */	b lbl_805397D8
lbl_805397C0:
/* 805397C0  1C 83 09 88 */	mulli r4, r3, 0x988
/* 805397C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805397C8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805397CC  7C 60 22 14 */	add r3, r0, r4
/* 805397D0  3F C3 00 01 */	addis r30, r3, 1
/* 805397D4  3B DE 74 38 */	addi r30, r30, 0x7438
lbl_805397D8:
/* 805397D8  A0 7E 08 E4 */	lhz r3, 0x8e4(r30)
/* 805397DC  4B FF 2D E1 */	bl aNPC_dma_regist_check_cloth_data
/* 805397E0  2C 03 00 00 */	cmpwi r3, 0
/* 805397E4  40 82 00 10 */	bne lbl_805397F4
/* 805397E8  A0 7E 08 E4 */	lhz r3, 0x8e4(r30)
/* 805397EC  4B FF 2C FD */	bl aNPC_dma_regist_cloth_data
/* 805397F0  48 00 00 10 */	b lbl_80539800
lbl_805397F4:
/* 805397F4  3B E0 00 01 */	li r31, 1
/* 805397F8  48 00 00 08 */	b lbl_80539800
lbl_805397FC:
/* 805397FC  3B E0 00 01 */	li r31, 1
lbl_80539800:
/* 80539800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80539804  7F E3 FB 78 */	mr r3, r31
/* 80539808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053980C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80539810  7C 08 03 A6 */	mtlr r0
/* 80539814  38 21 00 10 */	addi r1, r1, 0x10
/* 80539818  4E 80 00 20 */	blr 
