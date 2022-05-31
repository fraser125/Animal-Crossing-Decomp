lbl_805B8DDC:
/* 805B8DDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B8DE0  7C 08 02 A6 */	mflr r0
/* 805B8DE4  38 A0 00 00 */	li r5, 0
/* 805B8DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B8DEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B8DF0  7C 9F 23 78 */	mr r31, r4
/* 805B8DF4  38 81 00 08 */	addi r4, r1, 8
/* 805B8DF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B8DFC  7C 7E 1B 78 */	mr r30, r3
/* 805B8E00  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F102@ha */
/* 805B8E04  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B8E08  38 63 F1 02 */	addi r3, r3, 0xF102 /* 0x0000F102@l */
/* 805B8E0C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B8E10  90 C1 00 08 */	stw r6, 8(r1)
/* 805B8E14  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B8E18  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B8E1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B8E20  4B DE EA 11 */	bl mFI_SetFG_common
/* 805B8E24  7F C3 F3 78 */	mr r3, r30
/* 805B8E28  7F E4 FB 78 */	mr r4, r31
/* 805B8E2C  4B FF FF 89 */	bl aRSV_actor_move
/* 805B8E30  3C 60 80 5C */	lis r3, aRSV_actor_move@ha /* 0x805B8DB4@ha */
/* 805B8E34  38 03 8D B4 */	addi r0, r3, aRSV_actor_move@l /* 0x805B8DB4@l */
/* 805B8E38  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B8E3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B8E40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B8E44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B8E48  7C 08 03 A6 */	mtlr r0
/* 805B8E4C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B8E50  4E 80 00 20 */	blr 
