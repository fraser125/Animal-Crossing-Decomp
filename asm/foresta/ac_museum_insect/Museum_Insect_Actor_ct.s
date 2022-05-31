lbl_8045A8D8:
/* 8045A8D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045A8DC  7C 08 02 A6 */	mflr r0
/* 8045A8E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045A8E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8045A8E8  4B C4 05 E1 */	bl func_8009AEC8
/* 8045A8EC  3C C0 81 1D */	lis r6, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045A8F0  7C 7F 1B 78 */	mr r31, r3
/* 8045A8F4  38 A0 00 00 */	li r5, 0
/* 8045A8F8  38 00 00 05 */	li r0, 5
/* 8045A8FC  7C 9A 23 78 */	mr r26, r4
/* 8045A900  93 E6 DF D0 */	stw r31, data_811CDFD0@l(r6)  /* 0x811CDFD0@l */
/* 8045A904  7C A3 2B 78 */	mr r3, r5
/* 8045A908  7C 09 03 A6 */	mtctr r0
lbl_8045A90C:
/* 8045A90C  38 05 2F 9C */	addi r0, r5, 0x2f9c
/* 8045A910  38 A5 00 02 */	addi r5, r5, 2
/* 8045A914  7C 7F 03 2E */	sthx r3, r31, r0
/* 8045A918  42 00 FF F4 */	bdnz lbl_8045A90C
/* 8045A91C  3B 60 00 00 */	li r27, 0
/* 8045A920  3B C0 00 00 */	li r30, 0
/* 8045A924  3B A0 00 00 */	li r29, 0
lbl_8045A928:
/* 8045A928  7F 63 DB 78 */	mr r3, r27
/* 8045A92C  4B F6 CB 4D */	bl mMmd_InsectInfo
/* 8045A930  2C 03 00 00 */	cmpwi r3, 0
/* 8045A934  41 82 00 54 */	beq lbl_8045A988
/* 8045A938  7C DF EA 14 */	add r6, r31, r29
/* 8045A93C  3C 60 80 68 */	lis r3, minsect_scale_tbl@ha /* 0x80686E38@ha */
/* 8045A940  A8 06 02 00 */	lha r0, 0x200(r6)
/* 8045A944  38 A3 6E 38 */	addi r5, r3, minsect_scale_tbl@l /* 0x80686E38@l */
/* 8045A948  3B 86 01 74 */	addi r28, r6, 0x174
/* 8045A94C  7F 44 D3 78 */	mr r4, r26
/* 8045A950  60 00 00 01 */	ori r0, r0, 1
/* 8045A954  B0 06 02 00 */	sth r0, 0x200(r6)
/* 8045A958  7F 83 E3 78 */	mr r3, r28
/* 8045A95C  93 66 01 74 */	stw r27, 0x174(r6)
/* 8045A960  7C 05 F4 2E */	lfsx f0, r5, r30
/* 8045A964  D0 06 01 88 */	stfs f0, 0x188(r6)
/* 8045A968  48 00 1D 9D */	bl set_relax_active_time
/* 8045A96C  3C 80 80 68 */	lis r4, minsect_ct@ha /* 0x806865EC@ha */
/* 8045A970  7F 83 E3 78 */	mr r3, r28
/* 8045A974  38 A4 65 EC */	addi r5, r4, minsect_ct@l /* 0x806865EC@l */
/* 8045A978  7F 44 D3 78 */	mr r4, r26
/* 8045A97C  7D 85 F0 2E */	lwzx r12, r5, r30
/* 8045A980  7D 89 03 A6 */	mtctr r12
/* 8045A984  4E 80 04 21 */	bctrl 
lbl_8045A988:
/* 8045A988  3B 7B 00 01 */	addi r27, r27, 1
/* 8045A98C  3B BD 00 94 */	addi r29, r29, 0x94
/* 8045A990  2C 1B 00 28 */	cmpwi r27, 0x28
/* 8045A994  3B DE 00 04 */	addi r30, r30, 4
/* 8045A998  41 80 FF 90 */	blt lbl_8045A928
/* 8045A99C  39 61 00 20 */	addi r11, r1, 0x20
/* 8045A9A0  4B C4 05 75 */	bl func_8009AF14
/* 8045A9A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045A9A8  7C 08 03 A6 */	mtlr r0
/* 8045A9AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8045A9B0  4E 80 00 20 */	blr 
