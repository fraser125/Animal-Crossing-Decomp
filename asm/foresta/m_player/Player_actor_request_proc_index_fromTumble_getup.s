lbl_804E83E4:
/* 804E83E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E83E8  7C 08 02 A6 */	mflr r0
/* 804E83EC  2C 05 00 00 */	cmpwi r5, 0
/* 804E83F0  7C 65 1B 78 */	mr r5, r3
/* 804E83F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E83F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E83FC  7C 9F 23 78 */	mr r31, r4
/* 804E8400  41 82 00 5C */	beq lbl_804E845C
/* 804E8404  80 05 0D 18 */	lwz r0, 0xd18(r5)
/* 804E8408  2C 00 00 00 */	cmpwi r0, 0
/* 804E840C  40 80 00 30 */	bge lbl_804E843C
/* 804E8410  4B FE CF 5D */	bl Player_actor_SettleRequestMainIndexPriority
/* 804E8414  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E8418  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E841C  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804E8420  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804E8424  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E8428  7F E3 FB 78 */	mr r3, r31
/* 804E842C  38 80 00 00 */	li r4, 0
/* 804E8430  38 A0 00 01 */	li r5, 1
/* 804E8434  4B FF D7 C9 */	bl func_804E5BFC
/* 804E8438  48 00 00 24 */	b lbl_804E845C
lbl_804E843C:
/* 804E843C  90 01 00 08 */	stw r0, 8(r1)
/* 804E8440  7F E3 FB 78 */	mr r3, r31
/* 804E8444  38 C1 00 08 */	addi r6, r1, 8
/* 804E8448  38 80 00 02 */	li r4, 2
/* 804E844C  80 E5 11 74 */	lwz r7, 0x1174(r5)
/* 804E8450  38 A0 00 00 */	li r5, 0
/* 804E8454  39 00 00 1E */	li r8, 0x1e
/* 804E8458  48 01 66 D5 */	bl func_804FEB2C
lbl_804E845C:
/* 804E845C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E8460  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E8464  7C 08 03 A6 */	mtlr r0
/* 804E8468  38 21 00 20 */	addi r1, r1, 0x20
/* 804E846C  4E 80 00 20 */	blr 
