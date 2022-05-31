lbl_8053986C:
/* 8053986C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80539870  7C 08 02 A6 */	mflr r0
/* 80539874  38 A0 00 01 */	li r5, 1
/* 80539878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053987C  A0 03 00 06 */	lhz r0, 6(r3)
/* 80539880  28 00 00 00 */	cmplwi r0, 0
/* 80539884  41 82 00 14 */	beq lbl_80539898
/* 80539888  7C 03 03 78 */	mr r3, r0
/* 8053988C  4B FF FF 91 */	bl aNPC_check_dma_cloth_data_sub
/* 80539890  7C 65 1B 78 */	mr r5, r3
/* 80539894  48 00 00 34 */	b lbl_805398C8
lbl_80539898:
/* 80539898  A0 83 00 02 */	lhz r4, 2(r3)
/* 8053989C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 805398A0  2C 00 00 0E */	cmpwi r0, 0xe
/* 805398A4  40 82 00 24 */	bne lbl_805398C8
/* 805398A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805398AC  38 A0 00 0F */	li r5, 0xf
/* 805398B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805398B4  3C 63 00 01 */	addis r3, r3, 1
/* 805398B8  38 63 74 38 */	addi r3, r3, 0x7438
/* 805398BC  4B E9 2E 21 */	bl mNpc_SearchAnimalinfo
/* 805398C0  4B FF FE C5 */	bl aNPC_check_dma_cloth_data
/* 805398C4  7C 65 1B 78 */	mr r5, r3
lbl_805398C8:
/* 805398C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805398CC  7C A3 2B 78 */	mr r3, r5
/* 805398D0  7C 08 03 A6 */	mtlr r0
/* 805398D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805398D8  4E 80 00 20 */	blr 
