lbl_8042A838:
/* 8042A838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042A83C  7C 08 02 A6 */	mflr r0
/* 8042A840  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042A844  39 61 00 20 */	addi r11, r1, 0x20
/* 8042A848  4B C7 06 8D */	bl func_8009AED4
/* 8042A84C  7C 7D 1B 78 */	mr r29, r3
/* 8042A850  7C 9E 23 78 */	mr r30, r4
/* 8042A854  3B FD 01 8C */	addi r31, r29, 0x18c
/* 8042A858  7F E3 FB 78 */	mr r3, r31
/* 8042A85C  4B F4 67 B9 */	bl cKF_SkeletonInfo_R_play
/* 8042A860  3C 80 80 64 */	lis r4, data_80644024@ha /* 0x80644024@ha */
/* 8042A864  7F A3 EB 78 */	mr r3, r29
/* 8042A868  38 A4 40 24 */	addi r5, r4, data_80644024@l /* 0x80644024@l */
/* 8042A86C  7F C4 F3 78 */	mr r4, r30
/* 8042A870  C0 05 00 00 */	lfs f0, 0(r5)
/* 8042A874  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042A878  4B FF FF 09 */	bl aHC_OperateAnime
/* 8042A87C  39 61 00 20 */	addi r11, r1, 0x20
/* 8042A880  4B C7 06 A1 */	bl func_8009AF20
/* 8042A884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042A888  7C 08 03 A6 */	mtlr r0
/* 8042A88C  38 21 00 20 */	addi r1, r1, 0x20
/* 8042A890  4E 80 00 20 */	blr 
