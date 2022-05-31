lbl_804E5288:
/* 804E5288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E528C  7C 08 02 A6 */	mflr r0
/* 804E5290  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E5298  7C 9F 23 78 */	mr r31, r4
/* 804E529C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E52A0  7C 7E 1B 78 */	mr r30, r3
/* 804E52A4  7F C4 F3 78 */	mr r4, r30
/* 804E52A8  38 60 00 09 */	li r3, 9
/* 804E52AC  4B EB 4F B9 */	bl mDemo_Check
/* 804E52B0  2C 03 00 00 */	cmpwi r3, 0
/* 804E52B4  40 82 00 30 */	bne lbl_804E52E4
/* 804E52B8  7F C3 F3 78 */	mr r3, r30
/* 804E52BC  4B FF 00 B1 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804E52C0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E52C4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E52C8  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804E52CC  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804E52D0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E52D4  7F E3 FB 78 */	mr r3, r31
/* 804E52D8  38 80 00 00 */	li r4, 0
/* 804E52DC  38 A0 00 01 */	li r5, 1
/* 804E52E0  48 00 09 1D */	bl func_804E5BFC
lbl_804E52E4:
/* 804E52E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E52E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E52EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E52F0  7C 08 03 A6 */	mtlr r0
/* 804E52F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E52F8  4E 80 00 20 */	blr 
