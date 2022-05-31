lbl_8055FFC4:
/* 8055FFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055FFC8  7C 08 02 A6 */	mflr r0
/* 8055FFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055FFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055FFD4  7C 7F 1B 78 */	mr r31, r3
/* 8055FFD8  38 60 00 08 */	li r3, 8
/* 8055FFDC  93 C1 00 08 */	stw r30, 8(r1)
/* 8055FFE0  7C 9E 23 78 */	mr r30, r4
/* 8055FFE4  7F E4 FB 78 */	mr r4, r31
/* 8055FFE8  4B E3 A2 7D */	bl mDemo_Check
/* 8055FFEC  2C 03 00 01 */	cmpwi r3, 1
/* 8055FFF0  40 82 00 3C */	bne lbl_8056002C
/* 8055FFF4  4B E3 A4 1D */	bl mDemo_Check_ListenAble
/* 8055FFF8  2C 03 00 00 */	cmpwi r3, 0
/* 8055FFFC  40 82 00 70 */	bne lbl_8056006C
/* 80560000  80 BF 09 94 */	lwz r5, 0x994(r31)
/* 80560004  7F E3 FB 78 */	mr r3, r31
/* 80560008  7F C4 F3 78 */	mr r4, r30
/* 8056000C  38 A5 00 01 */	addi r5, r5, 1
/* 80560010  48 00 0D E1 */	bl aNM2_setupAction
/* 80560014  38 60 00 04 */	li r3, 4
/* 80560018  38 80 00 09 */	li r4, 9
/* 8056001C  38 A0 00 00 */	li r5, 0
/* 80560020  4B E3 84 19 */	bl mDemo_Set_OrderValue
/* 80560024  4B E3 A3 91 */	bl mDemo_Set_ListenAble
/* 80560028  48 00 00 44 */	b lbl_8056006C
lbl_8056002C:
/* 8056002C  3C 60 80 65 */	lis r3, lit_540@ha /* 0x80649720@ha */
/* 80560030  C0 3F 09 C0 */	lfs f1, 0x9c0(r31)
/* 80560034  C0 03 97 20 */	lfs f0, lit_540@l(r3)  /* 0x80649720@l */
/* 80560038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056003C  4C 40 13 82 */	cror 2, 0, 2
/* 80560040  40 82 00 1C */	bne lbl_8056005C
/* 80560044  3C 60 80 56 */	lis r3, aNM2_set_talk_info_announce_start_wait@ha /* 0x8055FF30@ha */
/* 80560048  7F E4 FB 78 */	mr r4, r31
/* 8056004C  38 A3 FF 30 */	addi r5, r3, aNM2_set_talk_info_announce_start_wait@l /* 0x8055FF30@l */
/* 80560050  38 60 00 08 */	li r3, 8
/* 80560054  4B E3 A1 09 */	bl mDemo_Request
/* 80560058  48 00 00 14 */	b lbl_8056006C
lbl_8056005C:
/* 8056005C  3C 60 80 65 */	lis r3, lit_545@ha /* 0x80649734@ha */
/* 80560060  C0 03 97 34 */	lfs f0, lit_545@l(r3)  /* 0x80649734@l */
/* 80560064  EC 01 00 28 */	fsubs f0, f1, f0
/* 80560068  D0 1F 09 C0 */	stfs f0, 0x9c0(r31)
lbl_8056006C:
/* 8056006C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560074  83 C1 00 08 */	lwz r30, 8(r1)
/* 80560078  7C 08 03 A6 */	mtlr r0
/* 8056007C  38 21 00 10 */	addi r1, r1, 0x10
/* 80560080  4E 80 00 20 */	blr 
