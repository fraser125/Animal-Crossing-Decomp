lbl_80544AF4:
/* 80544AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80544AF8  7C 08 02 A6 */	mflr r0
/* 80544AFC  38 A0 00 01 */	li r5, 1
/* 80544B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544B04  A0 03 00 06 */	lhz r0, 6(r3)
/* 80544B08  28 00 00 00 */	cmplwi r0, 0
/* 80544B0C  41 82 00 14 */	beq lbl_80544B20
/* 80544B10  7C 03 03 78 */	mr r3, r0
/* 80544B14  4B FF FF 91 */	bl aNPC_check_dma_cloth_data_sub
/* 80544B18  7C 65 1B 78 */	mr r5, r3
/* 80544B1C  48 00 00 34 */	b lbl_80544B50
lbl_80544B20:
/* 80544B20  A0 83 00 02 */	lhz r4, 2(r3)
/* 80544B24  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80544B28  2C 00 00 0E */	cmpwi r0, 0xe
/* 80544B2C  40 82 00 24 */	bne lbl_80544B50
/* 80544B30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80544B34  38 A0 00 0F */	li r5, 0xf
/* 80544B38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80544B3C  3C 63 00 01 */	addis r3, r3, 1
/* 80544B40  38 63 74 38 */	addi r3, r3, 0x7438
/* 80544B44  4B E8 7B 99 */	bl mNpc_SearchAnimalinfo
/* 80544B48  4B FF FE C5 */	bl aNPC_check_dma_cloth_data
/* 80544B4C  7C 65 1B 78 */	mr r5, r3
lbl_80544B50:
/* 80544B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80544B54  7C A3 2B 78 */	mr r3, r5
/* 80544B58  7C 08 03 A6 */	mtlr r0
/* 80544B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80544B60  4E 80 00 20 */	blr 
