lbl_804E8884:
/* 804E8884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8888  7C 08 02 A6 */	mflr r0
/* 804E888C  2C 05 00 00 */	cmpwi r5, 0
/* 804E8890  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E8898  7C 9F 23 78 */	mr r31, r4
/* 804E889C  41 82 00 34 */	beq lbl_804E88D0
/* 804E88A0  2C 06 00 00 */	cmpwi r6, 0
/* 804E88A4  41 82 00 2C */	beq lbl_804E88D0
/* 804E88A8  4B FE CA C5 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804E88AC  3C 60 80 65 */	lis r3, lit_8374@ha /* 0x80648494@ha */
/* 804E88B0  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E88B4  38 A3 84 94 */	addi r5, r3, lit_8374@l /* 0x80648494@l */
/* 804E88B8  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804E88BC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E88C0  7F E3 FB 78 */	mr r3, r31
/* 804E88C4  38 80 00 00 */	li r4, 0
/* 804E88C8  38 A0 00 01 */	li r5, 1
/* 804E88CC  4B FF D3 31 */	bl func_804E5BFC
lbl_804E88D0:
/* 804E88D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E88D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E88D8  7C 08 03 A6 */	mtlr r0
/* 804E88DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E88E0  4E 80 00 20 */	blr 
