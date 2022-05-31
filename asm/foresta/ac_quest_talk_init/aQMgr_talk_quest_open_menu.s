lbl_8048CD7C:
/* 8048CD7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CD80  7C 08 02 A6 */	mflr r0
/* 8048CD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CD88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CD8C  7C 7F 1B 78 */	mr r31, r3
/* 8048CD90  88 83 01 C8 */	lbz r4, 0x1c8(r3)
/* 8048CD94  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8048CD98  54 80 D7 BE */	rlwinm r0, r4, 0x1a, 0x1e, 0x1f
/* 8048CD9C  80 DF 01 DC */	lwz r6, 0x1dc(r31)
/* 8048CDA0  28 00 00 02 */	cmplwi r0, 2
/* 8048CDA4  40 82 00 60 */	bne lbl_8048CE04
/* 8048CDA8  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 8048CDAC  2C 00 00 05 */	cmpwi r0, 5
/* 8048CDB0  41 82 00 28 */	beq lbl_8048CDD8
/* 8048CDB4  40 80 00 38 */	bge lbl_8048CDEC
/* 8048CDB8  2C 00 00 04 */	cmpwi r0, 4
/* 8048CDBC  40 80 00 08 */	bge lbl_8048CDC4
/* 8048CDC0  48 00 00 2C */	b lbl_8048CDEC
lbl_8048CDC4:
/* 8048CDC4  38 80 00 01 */	li r4, 1
/* 8048CDC8  38 A0 00 08 */	li r5, 8
/* 8048CDCC  38 C0 00 01 */	li r6, 1
/* 8048CDD0  4B F6 29 0D */	bl mSM_open_submenu
/* 8048CDD4  48 00 00 68 */	b lbl_8048CE3C
lbl_8048CDD8:
/* 8048CDD8  38 80 00 01 */	li r4, 1
/* 8048CDDC  38 A0 00 08 */	li r5, 8
/* 8048CDE0  38 C0 00 02 */	li r6, 2
/* 8048CDE4  4B F6 28 F9 */	bl mSM_open_submenu
/* 8048CDE8  48 00 00 54 */	b lbl_8048CE3C
lbl_8048CDEC:
/* 8048CDEC  38 80 00 01 */	li r4, 1
/* 8048CDF0  38 A0 00 04 */	li r5, 4
/* 8048CDF4  38 E0 00 00 */	li r7, 0
/* 8048CDF8  39 00 00 01 */	li r8, 1
/* 8048CDFC  4B F6 29 2D */	bl mSM_open_submenu_new2
/* 8048CE00  48 00 00 3C */	b lbl_8048CE3C
lbl_8048CE04:
/* 8048CE04  A0 9F 01 E0 */	lhz r4, 0x1e0(r31)
/* 8048CE08  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 8048CE0C  2C 00 00 02 */	cmpwi r0, 2
/* 8048CE10  40 82 00 18 */	bne lbl_8048CE28
/* 8048CE14  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 8048CE18  2C 00 00 04 */	cmpwi r0, 4
/* 8048CE1C  40 82 00 0C */	bne lbl_8048CE28
/* 8048CE20  39 00 00 00 */	li r8, 0
/* 8048CE24  48 00 00 08 */	b lbl_8048CE2C
lbl_8048CE28:
/* 8048CE28  39 00 00 01 */	li r8, 1
lbl_8048CE2C:
/* 8048CE2C  38 80 00 01 */	li r4, 1
/* 8048CE30  38 A0 00 04 */	li r5, 4
/* 8048CE34  38 E0 00 00 */	li r7, 0
/* 8048CE38  4B F6 28 F1 */	bl mSM_open_submenu_new2
lbl_8048CE3C:
/* 8048CE3C  38 60 00 16 */	li r3, 0x16
/* 8048CE40  38 00 00 04 */	li r0, 4
/* 8048CE44  98 7F 01 86 */	stb r3, 0x186(r31)
/* 8048CE48  7F E3 FB 78 */	mr r3, r31
/* 8048CE4C  38 80 00 02 */	li r4, 2
/* 8048CE50  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048CE54  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048CE58  7D 89 03 A6 */	mtctr r12
/* 8048CE5C  4E 80 04 21 */	bctrl 
/* 8048CE60  4B F3 28 49 */	bl func_803BF6A8
/* 8048CE64  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048CE68  4B F3 31 5D */	bl mMsg_Set_continue_msg_num
/* 8048CE6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CE70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CE74  7C 08 03 A6 */	mtlr r0
/* 8048CE78  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CE7C  4E 80 00 20 */	blr 
