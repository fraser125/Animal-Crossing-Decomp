lbl_803A4E20:
/* 803A4E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A4E24  7C 08 02 A6 */	mflr r0
/* 803A4E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4E2C  4B FF FE A1 */	bl mFI_GetFieldId
/* 803A4E30  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A4E34  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803A4E38  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A4E3C  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803A4E40  3C 64 00 02 */	addis r3, r4, 2
/* 803A4E44  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803A4E48  A0 63 65 1C */	lhz r3, 0x651c(r3)
/* 803A4E4C  41 82 00 F8 */	beq lbl_803A4F44
/* 803A4E50  40 80 00 10 */	bge lbl_803A4E60
/* 803A4E54  2C 00 30 00 */	cmpwi r0, 0x3000
/* 803A4E58  41 82 00 14 */	beq lbl_803A4E6C
/* 803A4E5C  48 00 01 78 */	b lbl_803A4FD4
lbl_803A4E60:
/* 803A4E60  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803A4E64  41 82 00 EC */	beq lbl_803A4F50
/* 803A4E68  48 00 01 6C */	b lbl_803A4FD4
lbl_803A4E6C:
/* 803A4E6C  38 05 CF FF */	addi r0, r5, -12289
/* 803A4E70  28 00 00 11 */	cmplwi r0, 0x11
/* 803A4E74  41 81 00 C4 */	bgt lbl_803A4F38
/* 803A4E78  3C 60 80 65 */	lis r3, lit_538@ha /* 0x80653DA8@ha */
/* 803A4E7C  54 00 10 3A */	slwi r0, r0, 2
/* 803A4E80  38 63 3D A8 */	addi r3, r3, lit_538@l /* 0x80653DA8@l */
/* 803A4E84  7C 03 00 2E */	lwzx r0, r3, r0
/* 803A4E88  7C 09 03 A6 */	mtctr r0
/* 803A4E8C  4E 80 04 20 */	bctr 
lbl_803A4E90:
/* 803A4E90  3C 60 80 64 */	lis r3, data_80641F1C@ha /* 0x80641F1C@ha */
/* 803A4E94  C0 23 1F 1C */	lfs f1, data_80641F1C@l(r3)  /* 0x80641F1C@l */
/* 803A4E98  48 00 01 44 */	b lbl_803A4FDC
lbl_803A4E9C:
/* 803A4E9C  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A4EA0  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A4EA4  48 00 01 38 */	b lbl_803A4FDC
lbl_803A4EA8:
/* 803A4EA8  3C 60 80 64 */	lis r3, lit_533@ha /* 0x80641F24@ha */
/* 803A4EAC  C0 23 1F 24 */	lfs f1, lit_533@l(r3)  /* 0x80641F24@l */
/* 803A4EB0  48 00 01 2C */	b lbl_803A4FDC
lbl_803A4EB4:
/* 803A4EB4  3C 60 80 64 */	lis r3, lit_533@ha /* 0x80641F24@ha */
/* 803A4EB8  C0 23 1F 24 */	lfs f1, lit_533@l(r3)  /* 0x80641F24@l */
/* 803A4EBC  48 00 01 20 */	b lbl_803A4FDC
lbl_803A4EC0:
/* 803A4EC0  3C 60 80 64 */	lis r3, lit_534@ha /* 0x80641F28@ha */
/* 803A4EC4  C0 23 1F 28 */	lfs f1, lit_534@l(r3)  /* 0x80641F28@l */
/* 803A4EC8  48 00 01 14 */	b lbl_803A4FDC
lbl_803A4ECC:
/* 803A4ECC  3C 60 80 64 */	lis r3, lit_534@ha /* 0x80641F28@ha */
/* 803A4ED0  C0 23 1F 28 */	lfs f1, lit_534@l(r3)  /* 0x80641F28@l */
/* 803A4ED4  48 00 01 08 */	b lbl_803A4FDC
lbl_803A4ED8:
/* 803A4ED8  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A4EDC  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A4EE0  48 00 00 FC */	b lbl_803A4FDC
lbl_803A4EE4:
/* 803A4EE4  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A4EE8  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A4EEC  48 00 00 F0 */	b lbl_803A4FDC
lbl_803A4EF0:
/* 803A4EF0  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A4EF4  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A4EF8  48 00 00 E4 */	b lbl_803A4FDC
lbl_803A4EFC:
/* 803A4EFC  3C 60 80 64 */	lis r3, lit_536@ha /* 0x80641F30@ha */
/* 803A4F00  C0 23 1F 30 */	lfs f1, lit_536@l(r3)  /* 0x80641F30@l */
/* 803A4F04  48 00 00 D8 */	b lbl_803A4FDC
lbl_803A4F08:
/* 803A4F08  3C 60 80 64 */	lis r3, lit_536@ha /* 0x80641F30@ha */
/* 803A4F0C  C0 23 1F 30 */	lfs f1, lit_536@l(r3)  /* 0x80641F30@l */
/* 803A4F10  48 00 00 CC */	b lbl_803A4FDC
lbl_803A4F14:
/* 803A4F14  3C 60 80 64 */	lis r3, data_80641F1C@ha /* 0x80641F1C@ha */
/* 803A4F18  C0 23 1F 1C */	lfs f1, data_80641F1C@l(r3)  /* 0x80641F1C@l */
/* 803A4F1C  48 00 00 C0 */	b lbl_803A4FDC
lbl_803A4F20:
/* 803A4F20  3C 60 80 64 */	lis r3, lit_537@ha /* 0x80641F34@ha */
/* 803A4F24  C0 23 1F 34 */	lfs f1, lit_537@l(r3)  /* 0x80641F34@l */
/* 803A4F28  48 00 00 B4 */	b lbl_803A4FDC
lbl_803A4F2C:
/* 803A4F2C  3C 60 80 64 */	lis r3, lit_537@ha /* 0x80641F34@ha */
/* 803A4F30  C0 23 1F 34 */	lfs f1, lit_537@l(r3)  /* 0x80641F34@l */
/* 803A4F34  48 00 00 A8 */	b lbl_803A4FDC
lbl_803A4F38:
/* 803A4F38  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A4F3C  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A4F40  48 00 00 9C */	b lbl_803A4FDC
lbl_803A4F44:
/* 803A4F44  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A4F48  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A4F4C  48 00 00 90 */	b lbl_803A4FDC
lbl_803A4F50:
/* 803A4F50  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803A4F54  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803A4F58  40 82 00 10 */	bne lbl_803A4F68
/* 803A4F5C  3C 60 80 64 */	lis r3, data_80641F1C@ha /* 0x80641F1C@ha */
/* 803A4F60  C0 23 1F 1C */	lfs f1, data_80641F1C@l(r3)  /* 0x80641F1C@l */
/* 803A4F64  48 00 00 78 */	b lbl_803A4FDC
lbl_803A4F68:
/* 803A4F68  2C 00 00 29 */	cmpwi r0, 0x29
/* 803A4F6C  40 82 00 10 */	bne lbl_803A4F7C
/* 803A4F70  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A4F74  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A4F78  48 00 00 64 */	b lbl_803A4FDC
lbl_803A4F7C:
/* 803A4F7C  2C 00 00 2A */	cmpwi r0, 0x2a
/* 803A4F80  41 80 00 18 */	blt lbl_803A4F98
/* 803A4F84  2C 00 00 2D */	cmpwi r0, 0x2d
/* 803A4F88  41 81 00 10 */	bgt lbl_803A4F98
/* 803A4F8C  3C 60 80 64 */	lis r3, data_80641F1C@ha /* 0x80641F1C@ha */
/* 803A4F90  C0 23 1F 1C */	lfs f1, data_80641F1C@l(r3)  /* 0x80641F1C@l */
/* 803A4F94  48 00 00 48 */	b lbl_803A4FDC
lbl_803A4F98:
/* 803A4F98  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 803A4F9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A4FA0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803A4FA4  7C 60 22 14 */	add r3, r0, r4
/* 803A4FA8  3C 63 00 01 */	addis r3, r3, 1
/* 803A4FAC  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 803A4FB0  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 803A4FB4  28 00 00 03 */	cmplwi r0, 3
/* 803A4FB8  40 81 00 08 */	ble lbl_803A4FC0
/* 803A4FBC  38 00 00 03 */	li r0, 3
lbl_803A4FC0:
/* 803A4FC0  3C 60 80 65 */	lis r3, player_room_wd@ha /* 0x80653D98@ha */
/* 803A4FC4  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 803A4FC8  38 63 3D 98 */	addi r3, r3, player_room_wd@l /* 0x80653D98@l */
/* 803A4FCC  7C 23 04 2E */	lfsx f1, r3, r0
/* 803A4FD0  48 00 00 0C */	b lbl_803A4FDC
lbl_803A4FD4:
/* 803A4FD4  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A4FD8  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
lbl_803A4FDC:
/* 803A4FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A4FE0  7C 08 03 A6 */	mtlr r0
/* 803A4FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4FE8  4E 80 00 20 */	blr 
