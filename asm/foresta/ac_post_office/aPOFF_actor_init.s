lbl_805B8350:
/* 805B8350  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B8354  7C 08 02 A6 */	mflr r0
/* 805B8358  38 A0 00 00 */	li r5, 0
/* 805B835C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B8360  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B8364  7C 9F 23 78 */	mr r31, r4
/* 805B8368  38 81 00 08 */	addi r4, r1, 8
/* 805B836C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B8370  7C 7E 1B 78 */	mr r30, r3
/* 805B8374  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F0FF@ha */
/* 805B8378  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B837C  38 63 F0 FF */	addi r3, r3, 0xF0FF /* 0x0000F0FF@l */
/* 805B8380  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B8384  90 C1 00 08 */	stw r6, 8(r1)
/* 805B8388  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B838C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B8390  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B8394  4B DE F4 9D */	bl mFI_SetFG_common
/* 805B8398  7F C3 F3 78 */	mr r3, r30
/* 805B839C  7F E4 FB 78 */	mr r4, r31
/* 805B83A0  4B FF FF 21 */	bl aPOFF_actor_move
/* 805B83A4  3C 60 80 5C */	lis r3, aPOFF_actor_move@ha /* 0x805B82C0@ha */
/* 805B83A8  38 03 82 C0 */	addi r0, r3, aPOFF_actor_move@l /* 0x805B82C0@l */
/* 805B83AC  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B83B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B83B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B83B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B83BC  7C 08 03 A6 */	mtlr r0
/* 805B83C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805B83C4  4E 80 00 20 */	blr 
