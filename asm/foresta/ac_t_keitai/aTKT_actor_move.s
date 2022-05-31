lbl_804A90FC:
/* 804A90FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9100  7C 08 02 A6 */	mflr r0
/* 804A9104  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A910C  7C 7F 1B 78 */	mr r31, r3
/* 804A9110  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A9114  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804A9118  7C 04 00 00 */	cmpw r4, r0
/* 804A911C  41 82 00 08 */	beq lbl_804A9124
/* 804A9120  4B FF FF 55 */	bl aTKT_setupAction
lbl_804A9124:
/* 804A9124  38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 804A9128  4B EC 7E ED */	bl cKF_SkeletonInfo_R_play
/* 804A912C  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A9130  7F E3 FB 78 */	mr r3, r31
/* 804A9134  7D 89 03 A6 */	mtctr r12
/* 804A9138  4E 80 04 21 */	bctrl 
/* 804A913C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A9144  7C 08 03 A6 */	mtlr r0
/* 804A9148  38 21 00 10 */	addi r1, r1, 0x10
/* 804A914C  4E 80 00 20 */	blr 
