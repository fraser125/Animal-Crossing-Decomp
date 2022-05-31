lbl_804051CC:
/* 804051CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804051D0  7C 08 02 A6 */	mflr r0
/* 804051D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804051D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804051DC  7C 7F 1B 78 */	mr r31, r3
/* 804051E0  4B F9 09 25 */	bl mCon_dt
/* 804051E4  4B F7 7C F1 */	bl mBGM_cleanup
/* 804051E8  81 9F 00 08 */	lwz r12, 8(r31)
/* 804051EC  28 0C 00 00 */	cmplwi r12, 0
/* 804051F0  41 82 00 10 */	beq lbl_80405200
/* 804051F4  7F E3 FB 78 */	mr r3, r31
/* 804051F8  7D 89 03 A6 */	mtctr r12
/* 804051FC  4E 80 04 21 */	bctrl 
lbl_80405200:
/* 80405200  4B FF EC C1 */	bl mVibctl_cleanup
/* 80405204  38 7F 00 78 */	addi r3, r31, 0x78
/* 80405208  4B FF F9 55 */	bl THA_dt
/* 8040520C  38 7F 00 88 */	addi r3, r31, 0x88
/* 80405210  48 00 01 41 */	bl gamealloc_cleanup
/* 80405214  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80405218  38 00 00 00 */	li r0, 0
/* 8040521C  90 03 52 F0 */	stw r0, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 80405220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405228  7C 08 03 A6 */	mtlr r0
/* 8040522C  38 21 00 10 */	addi r1, r1, 0x10
/* 80405230  4E 80 00 20 */	blr 
