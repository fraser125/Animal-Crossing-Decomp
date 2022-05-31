lbl_8042B458:
/* 8042B458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B45C  7C 08 02 A6 */	mflr r0
/* 8042B460  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042B468  7C 7F 1B 78 */	mr r31, r3
/* 8042B46C  4B FB 86 FD */	bl mQst_GetFirstJobData
/* 8042B470  88 03 00 00 */	lbz r0, 0(r3)
/* 8042B474  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8042B478  28 00 00 03 */	cmplwi r0, 3
/* 8042B47C  41 82 00 24 */	beq lbl_8042B4A0
/* 8042B480  28 00 00 0E */	cmplwi r0, 0xe
/* 8042B484  41 82 00 1C */	beq lbl_8042B4A0
/* 8042B488  28 00 00 04 */	cmplwi r0, 4
/* 8042B48C  40 82 00 40 */	bne lbl_8042B4CC
/* 8042B490  88 03 00 01 */	lbz r0, 1(r3)
/* 8042B494  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 8042B498  28 00 00 01 */	cmplwi r0, 1
/* 8042B49C  40 82 00 30 */	bne lbl_8042B4CC
lbl_8042B4A0:
/* 8042B4A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042B4A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042B4A8  3C 63 00 02 */	addis r3, r3, 2
/* 8042B4AC  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 8042B4B0  28 00 00 00 */	cmplwi r0, 0
/* 8042B4B4  40 82 00 18 */	bne lbl_8042B4CC
/* 8042B4B8  88 1F 01 9C */	lbz r0, 0x19c(r31)
/* 8042B4BC  28 00 00 00 */	cmplwi r0, 0
/* 8042B4C0  40 82 00 0C */	bne lbl_8042B4CC
/* 8042B4C4  7F E3 FB 78 */	mr r3, r31
/* 8042B4C8  4B FF F5 69 */	bl aID_set_first_field_bgm
lbl_8042B4CC:
/* 8042B4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B4D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042B4D4  7C 08 03 A6 */	mtlr r0
/* 8042B4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B4DC  4E 80 00 20 */	blr 
