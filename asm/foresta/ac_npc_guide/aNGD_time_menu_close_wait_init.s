lbl_805543AC:
/* 805543AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805543B0  7C 08 02 A6 */	mflr r0
/* 805543B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805543B8  80 03 09 98 */	lwz r0, 0x998(r3)
/* 805543BC  38 64 1D EC */	addi r3, r4, 0x1dec
/* 805543C0  2C 00 00 0C */	cmpwi r0, 0xc
/* 805543C4  41 82 00 34 */	beq lbl_805543F8
/* 805543C8  40 80 00 10 */	bge lbl_805543D8
/* 805543CC  2C 00 00 06 */	cmpwi r0, 6
/* 805543D0  41 82 00 14 */	beq lbl_805543E4
/* 805543D4  48 00 00 48 */	b lbl_8055441C
lbl_805543D8:
/* 805543D8  2C 00 00 11 */	cmpwi r0, 0x11
/* 805543DC  41 82 00 30 */	beq lbl_8055440C
/* 805543E0  48 00 00 3C */	b lbl_8055441C
lbl_805543E4:
/* 805543E4  38 80 00 03 */	li r4, 3
/* 805543E8  38 A0 00 01 */	li r5, 1
/* 805543EC  38 C0 00 00 */	li r6, 0
/* 805543F0  4B E9 B2 ED */	bl mSM_open_submenu
/* 805543F4  48 00 00 28 */	b lbl_8055441C
lbl_805543F8:
/* 805543F8  38 80 00 04 */	li r4, 4
/* 805543FC  38 A0 00 00 */	li r5, 0
/* 80554400  38 C0 00 00 */	li r6, 0
/* 80554404  4B E9 B2 D9 */	bl mSM_open_submenu
/* 80554408  48 00 00 14 */	b lbl_8055441C
lbl_8055440C:
/* 8055440C  38 80 00 04 */	li r4, 4
/* 80554410  38 A0 00 01 */	li r5, 1
/* 80554414  38 C0 00 00 */	li r6, 0
/* 80554418  4B E9 B2 C5 */	bl mSM_open_submenu
lbl_8055441C:
/* 8055441C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554420  7C 08 03 A6 */	mtlr r0
/* 80554424  38 21 00 10 */	addi r1, r1, 0x10
/* 80554428  4E 80 00 20 */	blr 
