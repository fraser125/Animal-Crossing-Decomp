lbl_8057F558:
/* 8057F558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F55C  7C 08 02 A6 */	mflr r0
/* 8057F560  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8057F564  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F568  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8057F56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057F570  7C 7F 1B 78 */	mr r31, r3
/* 8057F574  90 03 09 64 */	stw r0, 0x964(r3)
/* 8057F578  4B E1 AE 3D */	bl mDemo_Set_ListenAble
/* 8057F57C  7F E3 FB 78 */	mr r3, r31
/* 8057F580  4B E1 AD 19 */	bl mDemo_Start
/* 8057F584  88 1F 09 A8 */	lbz r0, 0x9a8(r31)
/* 8057F588  28 00 00 01 */	cmplwi r0, 1
/* 8057F58C  40 82 00 18 */	bne lbl_8057F5A4
/* 8057F590  4B E1 B6 A5 */	bl mEv_CheckFirstJob
/* 8057F594  2C 03 00 00 */	cmpwi r3, 0
/* 8057F598  40 82 00 0C */	bne lbl_8057F5A4
/* 8057F59C  4B DF D3 01 */	bl mBGMPsComp_execute_bgm_num_get
/* 8057F5A0  98 7F 09 A6 */	stb r3, 0x9a6(r31)
lbl_8057F5A4:
/* 8057F5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F5A8  38 60 00 01 */	li r3, 1
/* 8057F5AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057F5B0  7C 08 03 A6 */	mtlr r0
/* 8057F5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F5B8  4E 80 00 20 */	blr 
