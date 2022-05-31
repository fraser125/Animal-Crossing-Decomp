lbl_8055E6C4:
/* 8055E6C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055E6C8  7C 08 02 A6 */	mflr r0
/* 8055E6CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055E6D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E6D4  4B B3 C7 F5 */	bl func_8009AEC8
/* 8055E6D8  AB A4 1F 66 */	lha r29, 0x1f66(r4)
/* 8055E6DC  7C 7B 1B 78 */	mr r27, r3
/* 8055E6E0  83 C4 1F 60 */	lwz r30, 0x1f60(r4)
/* 8055E6E4  3B E0 00 00 */	li r31, 0
/* 8055E6E8  2C 1D 00 01 */	cmpwi r29, 1
/* 8055E6EC  83 83 09 B0 */	lwz r28, 0x9b0(r3)
/* 8055E6F0  40 81 00 9C */	ble lbl_8055E78C
/* 8055E6F4  3B 80 00 01 */	li r28, 1
/* 8055E6F8  48 00 00 94 */	b lbl_8055E78C
lbl_8055E6FC:
/* 8055E6FC  A3 5E 00 00 */	lhz r26, 0(r30)
/* 8055E700  57 40 A7 3E */	rlwinm r0, r26, 0x14, 0x1c, 0x1f
/* 8055E704  2C 00 00 02 */	cmpwi r0, 2
/* 8055E708  40 82 00 40 */	bne lbl_8055E748
/* 8055E70C  57 40 C7 3E */	rlwinm r0, r26, 0x18, 0x1c, 0x1f
/* 8055E710  2C 00 00 0F */	cmpwi r0, 0xf
/* 8055E714  40 82 00 34 */	bne lbl_8055E748
/* 8055E718  4B E5 79 99 */	bl Kabu_get_price
/* 8055E71C  3C 80 80 6B */	lis r4, kabu_sum@ha /* 0x806AA028@ha */
/* 8055E720  57 45 10 3A */	slwi r5, r26, 2
/* 8055E724  38 04 A0 28 */	addi r0, r4, kabu_sum@l /* 0x806AA028@l */
/* 8055E728  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8055E72C  7C 60 2A 14 */	add r3, r0, r5
/* 8055E730  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8055E734  80 03 44 00 */	lwz r0, 0x4400(r3)
/* 8055E738  7C 00 21 D6 */	mullw r0, r0, r4
/* 8055E73C  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8055E740  7F FF 02 14 */	add r31, r31, r0
/* 8055E744  48 00 00 40 */	b lbl_8055E784
lbl_8055E748:
/* 8055E748  28 1A 20 00 */	cmplwi r26, 0x2000
/* 8055E74C  41 80 00 24 */	blt lbl_8055E770
/* 8055E750  28 1A 20 FF */	cmplwi r26, 0x20ff
/* 8055E754  41 81 00 1C */	bgt lbl_8055E770
/* 8055E758  7F 43 D3 78 */	mr r3, r26
/* 8055E75C  4B E8 9F 45 */	bl mSP_ItemNo2ItemPrice
/* 8055E760  54 60 F0 BE */	srwi r0, r3, 2
/* 8055E764  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8055E768  7F FF 02 14 */	add r31, r31, r0
/* 8055E76C  48 00 00 18 */	b lbl_8055E784
lbl_8055E770:
/* 8055E770  7F 43 D3 78 */	mr r3, r26
/* 8055E774  4B E8 9F 2D */	bl mSP_ItemNo2ItemPrice
/* 8055E778  54 60 F0 BE */	srwi r0, r3, 2
/* 8055E77C  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8055E780  7F FF 02 14 */	add r31, r31, r0
lbl_8055E784:
/* 8055E784  3B DE 00 04 */	addi r30, r30, 4
/* 8055E788  3B BD FF FF */	addi r29, r29, -1
lbl_8055E78C:
/* 8055E78C  2C 1D 00 00 */	cmpwi r29, 0
/* 8055E790  40 82 FF 6C */	bne lbl_8055E6FC
/* 8055E794  93 FB 09 A8 */	stw r31, 0x9a8(r27)
/* 8055E798  7F E3 FB 78 */	mr r3, r31
/* 8055E79C  38 80 00 02 */	li r4, 2
/* 8055E7A0  4B FF C1 05 */	bl aNSC_set_value_str
/* 8055E7A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E7A8  4B B3 C7 6D */	bl func_8009AF14
/* 8055E7AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055E7B0  7C 08 03 A6 */	mtlr r0
/* 8055E7B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055E7B8  4E 80 00 20 */	blr 
