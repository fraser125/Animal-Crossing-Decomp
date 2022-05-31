lbl_80598F0C:
/* 80598F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598F10  7C 08 02 A6 */	mflr r0
/* 80598F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80598F1C  3B E0 00 00 */	li r31, 0
/* 80598F20  93 C1 00 08 */	stw r30, 8(r1)
/* 80598F24  7C 7E 1B 78 */	mr r30, r3
/* 80598F28  4B FF FE 89 */	bl aICH_check_ball
/* 80598F2C  2C 03 00 01 */	cmpwi r3, 1
/* 80598F30  40 82 00 14 */	bne lbl_80598F44
/* 80598F34  3C 60 80 65 */	lis r3, lit_616@ha /* 0x80649EFC@ha */
/* 80598F38  C0 03 9E FC */	lfs f0, lit_616@l(r3)  /* 0x80649EFC@l */
/* 80598F3C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80598F40  48 00 00 40 */	b lbl_80598F80
lbl_80598F44:
/* 80598F44  7F C3 F3 78 */	mr r3, r30
/* 80598F48  4B FF FE B9 */	bl aICH_check_player_net
/* 80598F4C  2C 03 00 01 */	cmpwi r3, 1
/* 80598F50  40 82 00 14 */	bne lbl_80598F64
/* 80598F54  3C 60 80 65 */	lis r3, lit_616@ha /* 0x80649EFC@ha */
/* 80598F58  C0 03 9E FC */	lfs f0, lit_616@l(r3)  /* 0x80649EFC@l */
/* 80598F5C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80598F60  48 00 00 20 */	b lbl_80598F80
lbl_80598F64:
/* 80598F64  7F C3 F3 78 */	mr r3, r30
/* 80598F68  4B FF FF 25 */	bl aICH_check_player_scoop
/* 80598F6C  2C 03 00 01 */	cmpwi r3, 1
/* 80598F70  40 82 00 10 */	bne lbl_80598F80
/* 80598F74  3C 60 80 65 */	lis r3, lit_616@ha /* 0x80649EFC@ha */
/* 80598F78  C0 03 9E FC */	lfs f0, lit_616@l(r3)  /* 0x80649EFC@l */
/* 80598F7C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
lbl_80598F80:
/* 80598F80  3C 60 80 65 */	lis r3, lit_617@ha /* 0x80649F00@ha */
/* 80598F84  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 80598F88  C0 03 9F 00 */	lfs f0, lit_617@l(r3)  /* 0x80649F00@l */
/* 80598F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80598F90  4C 41 13 82 */	cror 2, 1, 2
/* 80598F94  40 82 00 08 */	bne lbl_80598F9C
/* 80598F98  3B E0 00 01 */	li r31, 1
lbl_80598F9C:
/* 80598F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598FA0  7F E3 FB 78 */	mr r3, r31
/* 80598FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80598FA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80598FAC  7C 08 03 A6 */	mtlr r0
/* 80598FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80598FB4  4E 80 00 20 */	blr 
