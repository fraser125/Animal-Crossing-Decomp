lbl_8053F484:
/* 8053F484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F488  7C 08 02 A6 */	mflr r0
/* 8053F48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F494  7C 7F 1B 78 */	mr r31, r3
/* 8053F498  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8053F49C  2C 00 00 02 */	cmpwi r0, 2
/* 8053F4A0  40 82 00 30 */	bne lbl_8053F4D0
/* 8053F4A4  4B FF BF AD */	bl func_8053B450
/* 8053F4A8  88 1F 07 FC */	lbz r0, 0x7fc(r31)
/* 8053F4AC  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8053F4B0  7C 00 28 40 */	cmplw r0, r5
/* 8053F4B4  41 82 00 1C */	beq lbl_8053F4D0
/* 8053F4B8  3C 60 80 6A */	lis r3, aNPC_wait_action@ha /* 0x806A3B48@ha */
/* 8053F4BC  98 BF 07 FC */	stb r5, 0x7fc(r31)
/* 8053F4C0  38 83 3B 48 */	addi r4, r3, aNPC_wait_action@l /* 0x806A3B48@l */
/* 8053F4C4  7F E3 FB 78 */	mr r3, r31
/* 8053F4C8  7C 84 28 AE */	lbzx r4, r4, r5
/* 8053F4CC  4B FF E8 85 */	bl aNPC_setupAction
lbl_8053F4D0:
/* 8053F4D0  7F E3 FB 78 */	mr r3, r31
/* 8053F4D4  4B FF F8 71 */	bl aNPC_act_wait
/* 8053F4D8  2C 03 00 00 */	cmpwi r3, 0
/* 8053F4DC  40 82 00 0C */	bne lbl_8053F4E8
/* 8053F4E0  38 00 00 FF */	li r0, 0xff
/* 8053F4E4  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_8053F4E8:
/* 8053F4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F4F0  7C 08 03 A6 */	mtlr r0
/* 8053F4F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F4F8  4E 80 00 20 */	blr 
