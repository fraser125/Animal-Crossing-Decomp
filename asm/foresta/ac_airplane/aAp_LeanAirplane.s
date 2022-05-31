lbl_8040FF30:
/* 8040FF30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040FF34  7C 08 02 A6 */	mflr r0
/* 8040FF38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040FF3C  A8 03 01 74 */	lha r0, 0x174(r3)
/* 8040FF40  2C 00 00 00 */	cmpwi r0, 0
/* 8040FF44  40 82 00 20 */	bne lbl_8040FF64
/* 8040FF48  3C A0 80 64 */	lis r5, data_8064377C@ha /* 0x8064377C@ha */
/* 8040FF4C  3C 80 80 64 */	lis r4, lit_500@ha /* 0x806437C0@ha */
/* 8040FF50  C0 25 37 7C */	lfs f1, data_8064377C@l(r5)  /* 0x8064377C@l */
/* 8040FF54  38 63 01 90 */	addi r3, r3, 0x190
/* 8040FF58  C0 44 37 C0 */	lfs f2, lit_500@l(r4)  /* 0x806437C0@l */
/* 8040FF5C  4B FF F8 05 */	bl func_8040F760
/* 8040FF60  48 00 00 54 */	b lbl_8040FFB4
lbl_8040FF64:
/* 8040FF64  C0 43 01 84 */	lfs f2, 0x184(r3)
/* 8040FF68  3C 80 80 64 */	lis r4, data_8064377C@ha /* 0x8064377C@ha */
/* 8040FF6C  C0 23 01 88 */	lfs f1, 0x188(r3)
/* 8040FF70  C0 04 37 7C */	lfs f0, data_8064377C@l(r4)  /* 0x8064377C@l */
/* 8040FF74  EC 22 08 28 */	fsubs f1, f2, f1
/* 8040FF78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040FF7C  40 81 00 20 */	ble lbl_8040FF9C
/* 8040FF80  3C A0 80 64 */	lis r5, lit_463@ha /* 0x806437A4@ha */
/* 8040FF84  3C 80 80 64 */	lis r4, lit_500@ha /* 0x806437C0@ha */
/* 8040FF88  C0 25 37 A4 */	lfs f1, lit_463@l(r5)  /* 0x806437A4@l */
/* 8040FF8C  38 63 01 90 */	addi r3, r3, 0x190
/* 8040FF90  C0 44 37 C0 */	lfs f2, lit_500@l(r4)  /* 0x806437C0@l */
/* 8040FF94  4B FF F7 CD */	bl func_8040F760
/* 8040FF98  48 00 00 1C */	b lbl_8040FFB4
lbl_8040FF9C:
/* 8040FF9C  3C A0 80 64 */	lis r5, lit_608@ha /* 0x8064380C@ha */
/* 8040FFA0  3C 80 80 64 */	lis r4, lit_500@ha /* 0x806437C0@ha */
/* 8040FFA4  C0 25 38 0C */	lfs f1, lit_608@l(r5)  /* 0x8064380C@l */
/* 8040FFA8  38 63 01 90 */	addi r3, r3, 0x190
/* 8040FFAC  C0 44 37 C0 */	lfs f2, lit_500@l(r4)  /* 0x806437C0@l */
/* 8040FFB0  4B FF F7 B1 */	bl func_8040F760
lbl_8040FFB4:
/* 8040FFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040FFB8  7C 08 03 A6 */	mtlr r0
/* 8040FFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8040FFC0  4E 80 00 20 */	blr 
