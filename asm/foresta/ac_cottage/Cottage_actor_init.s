lbl_80417080:
/* 80417080  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80417084  7C 08 02 A6 */	mflr r0
/* 80417088  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041708C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80417090  7C 9F 23 78 */	mr r31, r4
/* 80417094  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80417098  7C 7E 1B 78 */	mr r30, r3
/* 8041709C  4B FF ED 81 */	bl func_80415E1C
/* 804170A0  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 804170A4  38 81 00 08 */	addi r4, r1, 8
/* 804170A8  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 804170AC  38 A0 00 00 */	li r5, 0
/* 804170B0  90 C1 00 08 */	stw r6, 8(r1)
/* 804170B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804170B8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 804170BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804170C0  A0 63 00 18 */	lhz r3, 0x18(r3)
/* 804170C4  4B F9 07 6D */	bl mFI_SetFG_common
/* 804170C8  7F C3 F3 78 */	mr r3, r30
/* 804170CC  7F E4 FB 78 */	mr r4, r31
/* 804170D0  4B FF FF 51 */	bl Cottage_actor_move
/* 804170D4  3C 60 80 41 */	lis r3, Cottage_actor_move@ha /* 0x80417020@ha */
/* 804170D8  38 03 70 20 */	addi r0, r3, Cottage_actor_move@l /* 0x80417020@l */
/* 804170DC  90 1E 01 64 */	stw r0, 0x164(r30)
/* 804170E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804170E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804170E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804170EC  7C 08 03 A6 */	mtlr r0
/* 804170F0  38 21 00 20 */	addi r1, r1, 0x20
/* 804170F4  4E 80 00 20 */	blr 