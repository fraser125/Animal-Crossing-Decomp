lbl_805937A4:
/* 805937A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805937A8  7C 08 02 A6 */	mflr r0
/* 805937AC  38 80 00 00 */	li r4, 0
/* 805937B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805937B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805937B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805937BC  7C 7E 1B 78 */	mr r30, r3
/* 805937C0  38 60 00 6C */	li r3, 0x6c
/* 805937C4  4B E0 A6 09 */	bl mEv_get_save_area
/* 805937C8  28 03 00 00 */	cmplwi r3, 0
/* 805937CC  40 82 00 2C */	bne lbl_805937F8
/* 805937D0  38 60 00 6C */	li r3, 0x6c
/* 805937D4  38 80 00 00 */	li r4, 0
/* 805937D8  4B E0 A4 4D */	bl mEv_reserve_save_area
/* 805937DC  38 80 00 16 */	li r4, 0x16
/* 805937E0  7C 7F 1B 78 */	mr r31, r3
/* 805937E4  4B AC 98 85 */	bl bzero
/* 805937E8  7F E3 FB 78 */	mr r3, r31
/* 805937EC  4B E4 C8 A1 */	bl mPr_ClearPersonalID
/* 805937F0  93 FE 09 A8 */	stw r31, 0x9a8(r30)
/* 805937F4  48 00 00 08 */	b lbl_805937FC
lbl_805937F8:
/* 805937F8  90 7E 09 A8 */	stw r3, 0x9a8(r30)
lbl_805937FC:
/* 805937FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80593804  83 C1 00 08 */	lwz r30, 8(r1)
/* 80593808  7C 08 03 A6 */	mtlr r0
/* 8059380C  38 21 00 10 */	addi r1, r1, 0x10
/* 80593810  4E 80 00 20 */	blr 
