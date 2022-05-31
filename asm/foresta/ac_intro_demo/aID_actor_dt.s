lbl_8042A9A0:
/* 8042A9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A9A4  7C 08 02 A6 */	mflr r0
/* 8042A9A8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042A9AC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8042A9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A9B4  3C 84 00 02 */	addis r4, r4, 2
/* 8042A9B8  80 04 60 AC */	lwz r0, 0x60ac(r4)
/* 8042A9BC  28 00 00 00 */	cmplwi r0, 0
/* 8042A9C0  41 82 00 0C */	beq lbl_8042A9CC
/* 8042A9C4  38 00 00 00 */	li r0, 0
/* 8042A9C8  90 04 60 AC */	stw r0, 0x60ac(r4)
lbl_8042A9CC:
/* 8042A9CC  88 03 01 9C */	lbz r0, 0x19c(r3)
/* 8042A9D0  28 00 00 02 */	cmplwi r0, 2
/* 8042A9D4  40 82 00 10 */	bne lbl_8042A9E4
/* 8042A9D8  38 60 00 33 */	li r3, 0x33
/* 8042A9DC  38 80 01 68 */	li r4, 0x168
/* 8042A9E0  4B F5 1B 2D */	bl mBGMPsComp_delete_ps_fieldSuddenEv
lbl_8042A9E4:
/* 8042A9E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A9E8  7C 08 03 A6 */	mtlr r0
/* 8042A9EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A9F0  4E 80 00 20 */	blr 
