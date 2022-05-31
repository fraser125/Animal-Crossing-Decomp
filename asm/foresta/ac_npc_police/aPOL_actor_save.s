lbl_8056A0C4:
/* 8056A0C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056A0C8  7C 08 02 A6 */	mflr r0
/* 8056A0CC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056A0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056A0D4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056A0D8  3C A5 00 02 */	addis r5, r5, 2
/* 8056A0DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056A0E0  7C 7F 1B 78 */	mr r31, r3
/* 8056A0E4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056A0E8  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 8056A0EC  7D 89 03 A6 */	mtctr r12
/* 8056A0F0  4E 80 04 21 */	bctrl 
/* 8056A0F4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8056A0F8  38 61 00 08 */	addi r3, r1, 8
/* 8056A0FC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8056A100  90 81 00 08 */	stw r4, 8(r1)
/* 8056A104  90 01 00 0C */	stw r0, 0xc(r1)
/* 8056A108  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8056A10C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8056A110  4B E3 D3 21 */	bl mFI_GetUnitFG
/* 8056A114  28 03 00 00 */	cmplwi r3, 0
/* 8056A118  41 82 00 18 */	beq lbl_8056A130
/* 8056A11C  A0 03 00 00 */	lhz r0, 0(r3)
/* 8056A120  28 00 FF FF */	cmplwi r0, 0xffff
/* 8056A124  40 82 00 0C */	bne lbl_8056A130
/* 8056A128  38 00 00 00 */	li r0, 0
/* 8056A12C  B0 03 00 00 */	sth r0, 0(r3)
lbl_8056A130:
/* 8056A130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056A134  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056A138  7C 08 03 A6 */	mtlr r0
/* 8056A13C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056A140  4E 80 00 20 */	blr 
