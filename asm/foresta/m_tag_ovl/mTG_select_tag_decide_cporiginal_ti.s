lbl_805FB904:
/* 805FB904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FB908  7C 08 02 A6 */	mflr r0
/* 805FB90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FB910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB914  7C 9F 23 78 */	mr r31, r4
/* 805FB918  93 C1 00 08 */	stw r30, 8(r1)
/* 805FB91C  7C 7E 1B 78 */	mr r30, r3
/* 805FB920  4B FD 19 29 */	bl mCO_top_folder
/* 805FB924  7C 64 1B 78 */	mr r4, r3
/* 805FB928  7F C3 F3 78 */	mr r3, r30
/* 805FB92C  4B FD 1D 31 */	bl mCO_get_folder_name
/* 805FB930  7C 60 1B 78 */	mr r0, r3
/* 805FB934  7F C3 F3 78 */	mr r3, r30
/* 805FB938  7C 07 03 78 */	mr r7, r0
/* 805FB93C  38 80 00 0A */	li r4, 0xa
/* 805FB940  38 A0 00 04 */	li r5, 4
/* 805FB944  38 C0 00 0C */	li r6, 0xc
/* 805FB948  39 00 00 78 */	li r8, 0x78
/* 805FB94C  4B DF 3D DD */	bl mSM_open_submenu_new2
/* 805FB950  38 00 00 02 */	li r0, 2
/* 805FB954  38 60 00 00 */	li r3, 0
/* 805FB958  90 1F 00 04 */	stw r0, 4(r31)
/* 805FB95C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB960  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FB964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FB968  7C 08 03 A6 */	mtlr r0
/* 805FB96C  38 21 00 10 */	addi r1, r1, 0x10
/* 805FB970  4E 80 00 20 */	blr 
