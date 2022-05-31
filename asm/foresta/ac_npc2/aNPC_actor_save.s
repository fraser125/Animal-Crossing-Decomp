lbl_80544528:
/* 80544528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054452C  7C 08 02 A6 */	mflr r0
/* 80544530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80544538  7C 7F 1B 78 */	mr r31, r3
/* 8054453C  4B E5 69 7D */	bl mEv_CheckTitleDemo
/* 80544540  2C 03 00 00 */	cmpwi r3, 0
/* 80544544  41 81 00 30 */	bgt lbl_80544574
/* 80544548  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8054454C  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80544550  2C 00 00 0E */	cmpwi r0, 0xe
/* 80544554  40 82 00 10 */	bne lbl_80544564
/* 80544558  7F E3 FB 78 */	mr r3, r31
/* 8054455C  4B FF FE B5 */	bl func_80544410
/* 80544560  48 00 00 0C */	b lbl_8054456C
lbl_80544564:
/* 80544564  7F E3 FB 78 */	mr r3, r31
/* 80544568  4B FF FF 69 */	bl aNPC_actor_save_for_special
lbl_8054456C:
/* 8054456C  7F E3 FB 78 */	mr r3, r31
/* 80544570  4B E8 BB D9 */	bl mNpc_RenewalSetNpc
lbl_80544574:
/* 80544574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80544578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054457C  7C 08 03 A6 */	mtlr r0
/* 80544580  38 21 00 10 */	addi r1, r1, 0x10
/* 80544584  4E 80 00 20 */	blr 
