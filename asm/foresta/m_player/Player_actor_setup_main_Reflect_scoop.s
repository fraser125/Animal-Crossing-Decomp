lbl_804F8524:
/* 804F8524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8528  7C 08 02 A6 */	mflr r0
/* 804F852C  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804F8530  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804F8534  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8538  39 00 00 00 */	li r8, 0
/* 804F853C  C0 25 65 64 */	lfs f1, lit_603@l(r5)  /* 0x80646564@l */
/* 804F8540  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F8544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F8548  7C 9F 23 78 */	mr r31, r4
/* 804F854C  FC 40 08 90 */	fmr f2, f1
/* 804F8550  93 C1 00 08 */	stw r30, 8(r1)
/* 804F8554  7C 7E 1B 78 */	mr r30, r3
/* 804F8558  80 E3 0D 60 */	lwz r7, 0xd60(r3)
/* 804F855C  80 03 0D 64 */	lwz r0, 0xd64(r3)
/* 804F8560  90 E3 0D 18 */	stw r7, 0xd18(r3)
/* 804F8564  38 E6 6C 4C */	addi r7, r6, lit_2671@l /* 0x80646C4C@l */
/* 804F8568  38 C5 83 54 */	addi r6, r5, lit_7381@l /* 0x80648354@l */
/* 804F856C  C0 67 00 00 */	lfs f3, 0(r7)
/* 804F8570  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 804F8574  38 A0 00 50 */	li r5, 0x50
/* 804F8578  C0 86 00 00 */	lfs f4, 0(r6)
/* 804F857C  38 C0 00 50 */	li r6, 0x50
/* 804F8580  80 03 0D 68 */	lwz r0, 0xd68(r3)
/* 804F8584  38 E0 00 00 */	li r7, 0
/* 804F8588  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 804F858C  A0 03 0D 6C */	lhz r0, 0xd6c(r3)
/* 804F8590  B0 03 0D 24 */	sth r0, 0xd24(r3)
/* 804F8594  80 03 0D 70 */	lwz r0, 0xd70(r3)
/* 804F8598  90 03 0D 28 */	stw r0, 0xd28(r3)
/* 804F859C  4B FD E2 75 */	bl Player_actor_InitAnimation_Base2
/* 804F85A0  7F C3 F3 78 */	mr r3, r30
/* 804F85A4  7F E4 FB 78 */	mr r4, r31
/* 804F85A8  4B FD D3 51 */	bl Player_actor_setup_main_Base
/* 804F85AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F85B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F85B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F85B8  7C 08 03 A6 */	mtlr r0
/* 804F85BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F85C0  4E 80 00 20 */	blr 
