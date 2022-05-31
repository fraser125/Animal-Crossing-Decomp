lbl_80421AD8:
/* 80421AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80421ADC  7C 08 02 A6 */	mflr r0
/* 80421AE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80421AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421AE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80421AEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80421AF0  3F E3 00 02 */	addis r31, r3, 2
/* 80421AF4  A0 1F 41 60 */	lhz r0, 0x4160(r31)
/* 80421AF8  28 00 00 00 */	cmplwi r0, 0
/* 80421AFC  40 82 00 0C */	bne lbl_80421B08
/* 80421B00  38 60 00 00 */	li r3, 0
/* 80421B04  48 00 00 38 */	b lbl_80421B3C
lbl_80421B08:
/* 80421B08  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D077@ha */
/* 80421B0C  38 63 D0 77 */	addi r3, r3, 0xD077 /* 0x0000D077@l */
/* 80421B10  4B FF FF 89 */	bl check_masknpc_reregist
/* 80421B14  2C 03 00 00 */	cmpwi r3, 0
/* 80421B18  41 82 00 0C */	beq lbl_80421B24
/* 80421B1C  38 60 00 01 */	li r3, 1
/* 80421B20  48 00 00 1C */	b lbl_80421B3C
lbl_80421B24:
/* 80421B24  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D077@ha */
/* 80421B28  A0 9F 41 60 */	lhz r4, 0x4160(r31)
/* 80421B2C  38 63 D0 77 */	addi r3, r3, 0xD077 /* 0x0000D077@l */
/* 80421B30  38 A0 00 00 */	li r5, 0
/* 80421B34  4B FA D1 29 */	bl mNpc_RegistMaskNpc
/* 80421B38  38 60 00 01 */	li r3, 1
lbl_80421B3C:
/* 80421B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421B44  7C 08 03 A6 */	mtlr r0
/* 80421B48  38 21 00 10 */	addi r1, r1, 0x10
/* 80421B4C  4E 80 00 20 */	blr 
