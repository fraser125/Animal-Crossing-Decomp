lbl_8053F3FC:
/* 8053F3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F400  7C 08 02 A6 */	mflr r0
/* 8053F404  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F40C  7C 9F 23 78 */	mr r31, r4
/* 8053F410  93 C1 00 08 */	stw r30, 8(r1)
/* 8053F414  7C 7E 1B 78 */	mr r30, r3
/* 8053F418  4B FF FE 8D */	bl aNPC_chk_request_act
/* 8053F41C  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 8053F420  28 00 00 FF */	cmplwi r0, 0xff
/* 8053F424  41 82 00 34 */	beq lbl_8053F458
/* 8053F428  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8053F42C  28 00 00 FF */	cmplwi r0, 0xff
/* 8053F430  41 82 00 28 */	beq lbl_8053F458
/* 8053F434  3C 60 80 6A */	lis r3, aNPC_act_proc@ha /* 0x806A3D0C@ha */
/* 8053F438  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8053F43C  38 83 3D 0C */	addi r4, r3, aNPC_act_proc@l /* 0x806A3D0C@l */
/* 8053F440  7F C3 F3 78 */	mr r3, r30
/* 8053F444  7D 84 00 2E */	lwzx r12, r4, r0
/* 8053F448  7F E4 FB 78 */	mr r4, r31
/* 8053F44C  38 A0 00 02 */	li r5, 2
/* 8053F450  7D 89 03 A6 */	mtctr r12
/* 8053F454  4E 80 04 21 */	bctrl 
lbl_8053F458:
/* 8053F458  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 8053F45C  28 00 00 FF */	cmplwi r0, 0xff
/* 8053F460  40 82 00 0C */	bne lbl_8053F46C
/* 8053F464  38 00 00 00 */	li r0, 0
/* 8053F468  98 1E 07 F4 */	stb r0, 0x7f4(r30)
lbl_8053F46C:
/* 8053F46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F474  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053F478  7C 08 03 A6 */	mtlr r0
/* 8053F47C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F480  4E 80 00 20 */	blr 
