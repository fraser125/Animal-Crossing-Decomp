lbl_80515984:
/* 80515984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515988  7C 08 02 A6 */	mflr r0
/* 8051598C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515994  7C 7F 1B 78 */	mr r31, r3
/* 80515998  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 8051599C  2C 00 00 01 */	cmpwi r0, 1
/* 805159A0  40 82 00 34 */	bne lbl_805159D4
/* 805159A4  38 00 00 3C */	li r0, 0x3c
/* 805159A8  7C 83 23 78 */	mr r3, r4
/* 805159AC  90 1F 01 80 */	stw r0, 0x180(r31)
/* 805159B0  4B E6 C9 ED */	bl Camera2_Inter_set_reverse_mode
/* 805159B4  38 60 00 FC */	li r3, 0xfc
/* 805159B8  38 80 01 68 */	li r4, 0x168
/* 805159BC  4B E6 69 69 */	bl mBGMPsComp_delete_ps_demo
/* 805159C0  38 00 00 00 */	li r0, 0
/* 805159C4  7F E3 FB 78 */	mr r3, r31
/* 805159C8  90 1F 01 98 */	stw r0, 0x198(r31)
/* 805159CC  38 80 00 05 */	li r4, 5
/* 805159D0  48 00 00 FD */	bl aGHC_setupAction
lbl_805159D4:
/* 805159D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805159D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805159DC  7C 08 03 A6 */	mtlr r0
/* 805159E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805159E4  4E 80 00 20 */	blr 
