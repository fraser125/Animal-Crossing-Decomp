lbl_805AF6A0:
/* 805AF6A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AF6A4  7C 08 02 A6 */	mflr r0
/* 805AF6A8  38 A0 00 00 */	li r5, 0
/* 805AF6AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AF6B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AF6B4  7C 9F 23 78 */	mr r31, r4
/* 805AF6B8  38 81 00 08 */	addi r4, r1, 8
/* 805AF6BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AF6C0  7C 7E 1B 78 */	mr r30, r3
/* 805AF6C4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F108@ha */
/* 805AF6C8  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805AF6CC  38 63 F1 08 */	addi r3, r3, 0xF108 /* 0x0000F108@l */
/* 805AF6D0  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805AF6D4  90 C1 00 08 */	stw r6, 8(r1)
/* 805AF6D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AF6DC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805AF6E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AF6E4  4B DF 81 4D */	bl mFI_SetFG_common
/* 805AF6E8  7F C3 F3 78 */	mr r3, r30
/* 805AF6EC  7F E4 FB 78 */	mr r4, r31
/* 805AF6F0  4B FF FE A5 */	bl aGOZ_actor_move
/* 805AF6F4  3C 60 80 5B */	lis r3, aGOZ_actor_move@ha /* 0x805AF594@ha */
/* 805AF6F8  38 03 F5 94 */	addi r0, r3, aGOZ_actor_move@l /* 0x805AF594@l */
/* 805AF6FC  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805AF700  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AF704  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AF708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AF70C  7C 08 03 A6 */	mtlr r0
/* 805AF710  38 21 00 20 */	addi r1, r1, 0x20
/* 805AF714  4E 80 00 20 */	blr 
