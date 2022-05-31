lbl_805CD708:
/* 805CD708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CD70C  7C 08 02 A6 */	mflr r0
/* 805CD710  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 805CD714  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CD718  3C 84 FF FF */	addis r4, r4, 0xffff
/* 805CD71C  38 84 01 CF */	addi r4, r4, 0x1cf
/* 805CD720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CD724  7C 7F 1B 78 */	mr r31, r3
/* 805CD728  93 C1 00 08 */	stw r30, 8(r1)
/* 805CD72C  7C BE 2B 78 */	mr r30, r5
/* 805CD730  48 01 C2 FD */	bl mNW_get_image_data
/* 805CD734  7C 60 1B 78 */	mr r0, r3
/* 805CD738  7F E3 FB 78 */	mr r3, r31
/* 805CD73C  7C 1F 03 78 */	mr r31, r0
/* 805CD740  7F C4 F3 78 */	mr r4, r30
/* 805CD744  4B FF FF 59 */	bl mCO_itemNo_to_data
/* 805CD748  7F E4 FB 78 */	mr r4, r31
/* 805CD74C  4B DF C5 E1 */	bl mNW_SwapOriginalData
/* 805CD750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CD754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CD758  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CD75C  7C 08 03 A6 */	mtlr r0
/* 805CD760  38 21 00 10 */	addi r1, r1, 0x10
/* 805CD764  4E 80 00 20 */	blr 
