lbl_8042A894:
/* 8042A894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042A898  7C 08 02 A6 */	mflr r0
/* 8042A89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042A8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8042A8A4  4B C7 06 31 */	bl func_8009AED4
/* 8042A8A8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8042A8AC  3C C0 81 1D */	lis r6, aID_clip@ha /* 0x811CBD88@ha */
/* 8042A8B0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8042A8B4  7C 9D 23 78 */	mr r29, r4
/* 8042A8B8  38 06 BD 88 */	addi r0, r6, aID_clip@l /* 0x811CBD88@l */
/* 8042A8BC  7C 7E 1B 78 */	mr r30, r3
/* 8042A8C0  3F E5 00 02 */	addis r31, r5, 2
/* 8042A8C4  38 80 00 08 */	li r4, 8
/* 8042A8C8  90 1F 60 AC */	stw r0, 0x60ac(r31)
/* 8042A8CC  7C 03 03 78 */	mr r3, r0
/* 8042A8D0  4B C3 27 99 */	bl bzero
/* 8042A8D4  80 7F 60 AC */	lwz r3, 0x60ac(r31)
/* 8042A8D8  38 00 00 01 */	li r0, 1
/* 8042A8DC  93 C3 00 00 */	stw r30, 0(r3)
/* 8042A8E0  80 7F 60 AC */	lwz r3, 0x60ac(r31)
/* 8042A8E4  90 03 00 04 */	stw r0, 4(r3)
/* 8042A8E8  4B F7 04 45 */	bl mEv_CheckFirstIntro
/* 8042A8EC  2C 03 00 01 */	cmpwi r3, 1
/* 8042A8F0  40 82 00 88 */	bne lbl_8042A978
/* 8042A8F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042A8F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042A8FC  3C 63 00 02 */	addis r3, r3, 2
/* 8042A900  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 8042A904  28 00 00 00 */	cmplwi r0, 0
/* 8042A908  40 82 00 5C */	bne lbl_8042A964
/* 8042A90C  A0 03 65 1E */	lhz r0, 0x651e(r3)
/* 8042A910  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 8042A914  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8042A918  41 82 00 08 */	beq lbl_8042A920
/* 8042A91C  48 00 00 34 */	b lbl_8042A950
lbl_8042A920:
/* 8042A920  38 60 00 01 */	li r3, 1
/* 8042A924  38 00 00 0A */	li r0, 0xa
/* 8042A928  90 7E 01 A4 */	stw r3, 0x1a4(r30)
/* 8042A92C  7F C3 F3 78 */	mr r3, r30
/* 8042A930  7F A4 EB 78 */	mr r4, r29
/* 8042A934  38 A0 00 06 */	li r5, 6
/* 8042A938  90 1E 01 78 */	stw r0, 0x178(r30)
/* 8042A93C  48 00 0B D9 */	bl aID_setupAction
/* 8042A940  38 60 00 30 */	li r3, 0x30
/* 8042A944  38 80 01 68 */	li r4, 0x168
/* 8042A948  4B F5 13 C1 */	bl mBGMPsComp_make_ps_demo
/* 8042A94C  48 00 00 3C */	b lbl_8042A988
lbl_8042A950:
/* 8042A950  7F C3 F3 78 */	mr r3, r30
/* 8042A954  7F A4 EB 78 */	mr r4, r29
/* 8042A958  38 A0 00 00 */	li r5, 0
/* 8042A95C  48 00 0B B9 */	bl aID_setupAction
/* 8042A960  48 00 00 28 */	b lbl_8042A988
lbl_8042A964:
/* 8042A964  7F C3 F3 78 */	mr r3, r30
/* 8042A968  7F A4 EB 78 */	mr r4, r29
/* 8042A96C  38 A0 00 09 */	li r5, 9
/* 8042A970  48 00 0B A5 */	bl aID_setupAction
/* 8042A974  48 00 00 14 */	b lbl_8042A988
lbl_8042A978:
/* 8042A978  7F C3 F3 78 */	mr r3, r30
/* 8042A97C  7F A4 EB 78 */	mr r4, r29
/* 8042A980  38 A0 00 0C */	li r5, 0xc
/* 8042A984  48 00 0B 91 */	bl aID_setupAction
lbl_8042A988:
/* 8042A988  39 61 00 20 */	addi r11, r1, 0x20
/* 8042A98C  4B C7 05 95 */	bl func_8009AF20
/* 8042A990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042A994  7C 08 03 A6 */	mtlr r0
/* 8042A998  38 21 00 20 */	addi r1, r1, 0x20
/* 8042A99C  4E 80 00 20 */	blr 
