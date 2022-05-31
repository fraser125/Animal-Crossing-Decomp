lbl_8054A810:
/* 8054A810  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054A814  7C 08 02 A6 */	mflr r0
/* 8054A818  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054A81C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054A820  4B B5 06 A9 */	bl func_8009AEC8
/* 8054A824  AB A4 1F 66 */	lha r29, 0x1f66(r4)
/* 8054A828  7C 7B 1B 78 */	mr r27, r3
/* 8054A82C  83 C4 1F 60 */	lwz r30, 0x1f60(r4)
/* 8054A830  3B E0 00 00 */	li r31, 0
/* 8054A834  2C 1D 00 01 */	cmpwi r29, 1
/* 8054A838  83 83 09 B0 */	lwz r28, 0x9b0(r3)
/* 8054A83C  40 81 00 9C */	ble lbl_8054A8D8
/* 8054A840  3B 80 00 01 */	li r28, 1
/* 8054A844  48 00 00 94 */	b lbl_8054A8D8
lbl_8054A848:
/* 8054A848  A3 5E 00 00 */	lhz r26, 0(r30)
/* 8054A84C  57 40 A7 3E */	rlwinm r0, r26, 0x14, 0x1c, 0x1f
/* 8054A850  2C 00 00 02 */	cmpwi r0, 2
/* 8054A854  40 82 00 40 */	bne lbl_8054A894
/* 8054A858  57 40 C7 3E */	rlwinm r0, r26, 0x18, 0x1c, 0x1f
/* 8054A85C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8054A860  40 82 00 34 */	bne lbl_8054A894
/* 8054A864  4B E6 B8 4D */	bl Kabu_get_price
/* 8054A868  3C 80 80 6A */	lis r4, kabu_sum@ha /* 0x806A4C70@ha */
/* 8054A86C  57 45 10 3A */	slwi r5, r26, 2
/* 8054A870  38 04 4C 70 */	addi r0, r4, kabu_sum@l /* 0x806A4C70@l */
/* 8054A874  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8054A878  7C 60 2A 14 */	add r3, r0, r5
/* 8054A87C  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8054A880  80 03 44 00 */	lwz r0, 0x4400(r3)
/* 8054A884  7C 00 21 D6 */	mullw r0, r0, r4
/* 8054A888  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8054A88C  7F FF 02 14 */	add r31, r31, r0
/* 8054A890  48 00 00 40 */	b lbl_8054A8D0
lbl_8054A894:
/* 8054A894  28 1A 20 00 */	cmplwi r26, 0x2000
/* 8054A898  41 80 00 24 */	blt lbl_8054A8BC
/* 8054A89C  28 1A 20 FF */	cmplwi r26, 0x20ff
/* 8054A8A0  41 81 00 1C */	bgt lbl_8054A8BC
/* 8054A8A4  7F 43 D3 78 */	mr r3, r26
/* 8054A8A8  4B E9 DD F9 */	bl mSP_ItemNo2ItemPrice
/* 8054A8AC  54 60 F0 BE */	srwi r0, r3, 2
/* 8054A8B0  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8054A8B4  7F FF 02 14 */	add r31, r31, r0
/* 8054A8B8  48 00 00 18 */	b lbl_8054A8D0
lbl_8054A8BC:
/* 8054A8BC  7F 43 D3 78 */	mr r3, r26
/* 8054A8C0  4B E9 DD E1 */	bl mSP_ItemNo2ItemPrice
/* 8054A8C4  54 60 F0 BE */	srwi r0, r3, 2
/* 8054A8C8  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8054A8CC  7F FF 02 14 */	add r31, r31, r0
lbl_8054A8D0:
/* 8054A8D0  3B DE 00 04 */	addi r30, r30, 4
/* 8054A8D4  3B BD FF FF */	addi r29, r29, -1
lbl_8054A8D8:
/* 8054A8D8  2C 1D 00 00 */	cmpwi r29, 0
/* 8054A8DC  40 82 FF 6C */	bne lbl_8054A848
/* 8054A8E0  93 FB 09 A8 */	stw r31, 0x9a8(r27)
/* 8054A8E4  7F E3 FB 78 */	mr r3, r31
/* 8054A8E8  38 80 00 02 */	li r4, 2
/* 8054A8EC  4B FF B7 39 */	bl aNSC_set_value_str
/* 8054A8F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054A8F4  4B B5 06 21 */	bl func_8009AF14
/* 8054A8F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054A8FC  7C 08 03 A6 */	mtlr r0
/* 8054A900  38 21 00 20 */	addi r1, r1, 0x20
/* 8054A904  4E 80 00 20 */	blr 
