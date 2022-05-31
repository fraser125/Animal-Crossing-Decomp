lbl_8037C3DC:
/* 8037C3DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C3E0  7C 08 02 A6 */	mflr r0
/* 8037C3E4  3C A0 81 13 */	lis r5, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C3E8  7C 86 23 78 */	mr r6, r4
/* 8037C3EC  39 05 51 C0 */	addi r8, r5, data_811351C0@l /* 0x811351C0@l */
/* 8037C3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C3F4  7C 65 1B 78 */	mr r5, r3
/* 8037C3F8  38 80 00 06 */	li r4, 6
/* 8037C3FC  38 E0 00 00 */	li r7, 0
/* 8037C400  38 68 01 64 */	addi r3, r8, 0x164
/* 8037C404  4B FF FD 81 */	bl mBGMPsComp_delete_ps
/* 8037C408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C40C  7C 08 03 A6 */	mtlr r0
/* 8037C410  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C414  4E 80 00 20 */	blr 
