lbl_804F93F8:
/* 804F93F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F93FC  7C 08 02 A6 */	mflr r0
/* 804F9400  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804F9404  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804F9408  38 E5 65 64 */	addi r7, r5, lit_603@l /* 0x80646564@l */
/* 804F940C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9410  C0 27 00 00 */	lfs f1, 0(r7)
/* 804F9414  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F9418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F941C  7C 9F 23 78 */	mr r31, r4
/* 804F9420  FC 40 08 90 */	fmr f2, f1
/* 804F9424  C0 66 6C 4C */	lfs f3, lit_2671@l(r6)  /* 0x80646C4C@l */
/* 804F9428  93 C1 00 08 */	stw r30, 8(r1)
/* 804F942C  7C 7E 1B 78 */	mr r30, r3
/* 804F9430  C0 85 83 54 */	lfs f4, lit_7381@l(r5)  /* 0x80648354@l */
/* 804F9434  38 A0 00 55 */	li r5, 0x55
/* 804F9438  38 C0 00 55 */	li r6, 0x55
/* 804F943C  38 E0 00 00 */	li r7, 0
/* 804F9440  39 00 00 00 */	li r8, 0
/* 804F9444  4B FD D3 CD */	bl Player_actor_InitAnimation_Base2
/* 804F9448  7F C3 F3 78 */	mr r3, r30
/* 804F944C  7F E4 FB 78 */	mr r4, r31
/* 804F9450  4B FD C4 A9 */	bl Player_actor_setup_main_Base
/* 804F9454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F945C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F9460  7C 08 03 A6 */	mtlr r0
/* 804F9464  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9468  4E 80 00 20 */	blr 
