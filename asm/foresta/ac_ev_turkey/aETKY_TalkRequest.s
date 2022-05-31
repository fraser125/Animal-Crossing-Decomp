lbl_80593F70:
/* 80593F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593F74  7C 08 02 A6 */	mflr r0
/* 80593F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80593F80  7C 7F 1B 78 */	mr r31, r3
/* 80593F84  88 03 09 B1 */	lbz r0, 0x9b1(r3)
/* 80593F88  28 00 00 00 */	cmplwi r0, 0
/* 80593F8C  40 82 00 C8 */	bne lbl_80594054
/* 80593F90  7C 83 23 78 */	mr r3, r4
/* 80593F94  4B E4 56 AD */	bl get_player_actor_withoutCheck
/* 80593F98  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80593F9C  3C 80 80 65 */	lis r4, lit_766@ha /* 0x80649D04@ha */
/* 80593FA0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80593FA4  C0 04 9D 04 */	lfs f0, lit_766@l(r4)  /* 0x80649D04@l */
/* 80593FA8  EC 82 08 28 */	fsubs f4, f2, f1
/* 80593FAC  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 80593FB0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80593FB4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80593FB8  EC 62 08 28 */	fsubs f3, f2, f1
/* 80593FBC  4C 41 13 82 */	cror 2, 1, 2
/* 80593FC0  40 82 00 08 */	bne lbl_80593FC8
/* 80593FC4  48 00 00 08 */	b lbl_80593FCC
lbl_80593FC8:
/* 80593FC8  FC 80 20 50 */	fneg f4, f4
lbl_80593FCC:
/* 80593FCC  3C 80 80 65 */	lis r4, lit_767@ha /* 0x80649D08@ha */
/* 80593FD0  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 80593FD4  C0 04 9D 08 */	lfs f0, lit_767@l(r4)  /* 0x80649D08@l */
/* 80593FD8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80593FDC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80593FE0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80593FE4  4C 40 13 82 */	cror 2, 0, 2
/* 80593FE8  40 82 00 80 */	bne lbl_80594068
/* 80593FEC  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80593FF0  3C 60 80 65 */	lis r3, lit_768@ha /* 0x80649D0C@ha */
/* 80593FF4  EC 21 00 72 */	fmuls f1, f1, f1
/* 80593FF8  C0 03 9D 0C */	lfs f0, lit_768@l(r3)  /* 0x80649D0C@l */
/* 80593FFC  EC 22 08 2A */	fadds f1, f2, f1
/* 80594000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80594004  4C 40 13 82 */	cror 2, 0, 2
/* 80594008  40 82 00 60 */	bne lbl_80594068
/* 8059400C  7F E4 FB 78 */	mr r4, r31
/* 80594010  38 60 00 08 */	li r3, 8
/* 80594014  4B E0 62 51 */	bl mDemo_Check
/* 80594018  2C 03 00 01 */	cmpwi r3, 1
/* 8059401C  40 82 00 20 */	bne lbl_8059403C
/* 80594020  4B E0 63 F1 */	bl mDemo_Check_ListenAble
/* 80594024  2C 03 00 00 */	cmpwi r3, 0
/* 80594028  40 82 00 40 */	bne lbl_80594068
/* 8059402C  4B E0 63 89 */	bl mDemo_Set_ListenAble
/* 80594030  38 00 00 01 */	li r0, 1
/* 80594034  98 1F 09 B1 */	stb r0, 0x9b1(r31)
/* 80594038  48 00 00 30 */	b lbl_80594068
lbl_8059403C:
/* 8059403C  3C 60 80 59 */	lis r3, aETKY_SetTalkInfo@ha /* 0x80593EFC@ha */
/* 80594040  7F E4 FB 78 */	mr r4, r31
/* 80594044  38 A3 3E FC */	addi r5, r3, aETKY_SetTalkInfo@l /* 0x80593EFC@l */
/* 80594048  38 60 00 08 */	li r3, 8
/* 8059404C  4B E0 61 11 */	bl mDemo_Request
/* 80594050  48 00 00 18 */	b lbl_80594068
lbl_80594054:
/* 80594054  3C 60 80 59 */	lis r3, aETKY_SetTalkInfo@ha /* 0x80593EFC@ha */
/* 80594058  7F E4 FB 78 */	mr r4, r31
/* 8059405C  38 A3 3E FC */	addi r5, r3, aETKY_SetTalkInfo@l /* 0x80593EFC@l */
/* 80594060  38 60 00 07 */	li r3, 7
/* 80594064  4B E0 60 F9 */	bl mDemo_Request
lbl_80594068:
/* 80594068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059406C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594070  7C 08 03 A6 */	mtlr r0
/* 80594074  38 21 00 10 */	addi r1, r1, 0x10
/* 80594078  4E 80 00 20 */	blr 
