lbl_8051FF20:
/* 8051FF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051FF24  7C 08 02 A6 */	mflr r0
/* 8051FF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051FF2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051FF30  7C 7F 1B 78 */	mr r31, r3
/* 8051FF34  7C 83 23 78 */	mr r3, r4
/* 8051FF38  4B EB 97 09 */	bl get_player_actor_withoutCheck
/* 8051FF3C  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 8051FF40  3C 60 80 65 */	lis r3, lit_757@ha /* 0x80649118@ha */
/* 8051FF44  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8051FF48  C0 03 91 18 */	lfs f0, lit_757@l(r3)  /* 0x80649118@l */
/* 8051FF4C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8051FF50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8051FF54  40 80 00 08 */	bge lbl_8051FF5C
/* 8051FF58  FC 40 10 50 */	fneg f2, f2
lbl_8051FF5C:
/* 8051FF5C  88 1F 09 A7 */	lbz r0, 0x9a7(r31)
/* 8051FF60  28 00 00 00 */	cmplwi r0, 0
/* 8051FF64  40 82 00 48 */	bne lbl_8051FFAC
/* 8051FF68  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8051FF6C  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 8051FF70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051FF74  40 80 00 38 */	bge lbl_8051FFAC
/* 8051FF78  3C 60 80 65 */	lis r3, lit_758@ha /* 0x8064911C@ha */
/* 8051FF7C  C0 03 91 1C */	lfs f0, lit_758@l(r3)  /* 0x8064911C@l */
/* 8051FF80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8051FF84  41 80 00 10 */	blt lbl_8051FF94
/* 8051FF88  88 1F 09 AA */	lbz r0, 0x9aa(r31)
/* 8051FF8C  28 00 00 00 */	cmplwi r0, 0
/* 8051FF90  41 82 00 1C */	beq lbl_8051FFAC
lbl_8051FF94:
/* 8051FF94  3C 60 80 52 */	lis r3, aEGH_set_force_talk_info@ha /* 0x8051FDFC@ha */
/* 8051FF98  7F E4 FB 78 */	mr r4, r31
/* 8051FF9C  38 A3 FD FC */	addi r5, r3, aEGH_set_force_talk_info@l /* 0x8051FDFC@l */
/* 8051FFA0  38 60 00 08 */	li r3, 8
/* 8051FFA4  4B E7 A1 B9 */	bl mDemo_Request
/* 8051FFA8  48 00 00 0C */	b lbl_8051FFB4
lbl_8051FFAC:
/* 8051FFAC  38 00 00 00 */	li r0, 0
/* 8051FFB0  98 1F 09 A7 */	stb r0, 0x9a7(r31)
lbl_8051FFB4:
/* 8051FFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051FFB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051FFBC  7C 08 03 A6 */	mtlr r0
/* 8051FFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051FFC4  4E 80 00 20 */	blr 
