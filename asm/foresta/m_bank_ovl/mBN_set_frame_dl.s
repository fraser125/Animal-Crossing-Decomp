lbl_805C3DC8:
/* 805C3DC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C3DCC  7C 08 02 A6 */	mflr r0
/* 805C3DD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C3DD4  39 61 00 30 */	addi r11, r1, 0x30
/* 805C3DD8  4B AD 70 F9 */	bl func_8009AED0
/* 805C3DDC  3C C0 80 65 */	lis r6, data_8064AD6C@ha /* 0x8064AD6C@ha */
/* 805C3DE0  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805C3DE4  C0 46 AD 6C */	lfs f2, data_8064AD6C@l(r6)  /* 0x8064AD6C@l */
/* 805C3DE8  7C 7C 1B 78 */	mr r28, r3
/* 805C3DEC  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 805C3DF0  3C 60 80 65 */	lis r3, lit_584@ha /* 0x8064AD70@ha */
/* 805C3DF4  38 C3 AD 70 */	addi r6, r3, lit_584@l /* 0x8064AD70@l */
/* 805C3DF8  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 805C3DFC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805C3E00  83 E4 00 00 */	lwz r31, 0(r4)
/* 805C3E04  EC 42 00 32 */	fmuls f2, f2, f0
/* 805C3E08  83 C7 09 D4 */	lwz r30, 0x9d4(r7)
/* 805C3E0C  C0 66 00 00 */	lfs f3, 0(r6)
/* 805C3E10  38 60 00 00 */	li r3, 0
/* 805C3E14  4B E4 84 ED */	bl Matrix_translate
/* 805C3E18  3C 60 80 65 */	lis r3, data_8064AD6C@ha /* 0x8064AD6C@ha */
/* 805C3E1C  3C 80 80 65 */	lis r4, lit_585@ha /* 0x8064AD74@ha */
/* 805C3E20  38 A3 AD 6C */	addi r5, r3, data_8064AD6C@l /* 0x8064AD6C@l */
/* 805C3E24  C0 64 AD 74 */	lfs f3, lit_585@l(r4)  /* 0x8064AD74@l */
/* 805C3E28  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C3E2C  38 60 00 01 */	li r3, 1
/* 805C3E30  FC 40 08 90 */	fmr f2, f1
/* 805C3E34  4B E4 85 B9 */	bl Matrix_scale
/* 805C3E38  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805C3E3C  3C 00 DE 00 */	lis r0, 0xde00
/* 805C3E40  3C 80 80 A1 */	lis r4, tyo_win_mode@ha /* 0x80A08D48@ha */
/* 805C3E44  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C3E48  90 1D 00 00 */	stw r0, 0(r29)
/* 805C3E4C  38 84 8D 48 */	addi r4, r4, tyo_win_mode@l /* 0x80A08D48@l */
/* 805C3E50  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C3E54  7F E3 FB 78 */	mr r3, r31
/* 805C3E58  90 9D 00 04 */	stw r4, 4(r29)
/* 805C3E5C  94 1D 00 08 */	stwu r0, 8(r29)
/* 805C3E60  4B E4 95 75 */	bl _Matrix_to_Mtx_new
/* 805C3E64  90 7D 00 04 */	stw r3, 4(r29)
/* 805C3E68  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064AD78@ha */
/* 805C3E6C  38 A3 AD 78 */	addi r5, r3, lit_586@l /* 0x8064AD78@l */
/* 805C3E70  3C 80 DE 00 */	lis r4, 0xde00
/* 805C3E74  80 DC 00 2C */	lwz r6, 0x2c(r28)
/* 805C3E78  3C 60 80 A1 */	lis r3, tyo_win_model@ha /* 0x80A08D88@ha */
/* 805C3E7C  C0 45 00 00 */	lfs f2, 0(r5)
/* 805C3E80  38 03 8D 88 */	addi r0, r3, tyo_win_model@l /* 0x80A08D88@l */
/* 805C3E84  C0 06 09 34 */	lfs f0, 0x934(r6)
/* 805C3E88  C0 26 09 38 */	lfs f1, 0x938(r6)
/* 805C3E8C  FC 00 00 50 */	fneg f0, f0
/* 805C3E90  FC 20 08 50 */	fneg f1, f1
/* 805C3E94  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C3E98  EC 22 00 72 */	fmuls f1, f2, f1
/* 805C3E9C  FC 00 00 1E */	fctiwz f0, f0
/* 805C3EA0  FC 20 08 1E */	fctiwz f1, f1
/* 805C3EA4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805C3EA8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805C3EAC  D8 21 00 08 */	stfd f1, 8(r1)
/* 805C3EB0  54 63 53 AA */	rlwinm r3, r3, 0xa, 0xe, 0x15
/* 805C3EB4  64 65 F2 00 */	oris r5, r3, 0xf200
/* 805C3EB8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805C3EBC  60 A5 00 1F */	ori r5, r5, 0x1f
/* 805C3EC0  54 C3 53 AA */	rlwinm r3, r6, 0xa, 0xe, 0x15
/* 805C3EC4  90 BD 00 08 */	stw r5, 8(r29)
/* 805C3EC8  64 63 80 00 */	oris r3, r3, 0x8000
/* 805C3ECC  60 63 00 1F */	ori r3, r3, 0x1f
/* 805C3ED0  90 7D 00 0C */	stw r3, 0xc(r29)
/* 805C3ED4  90 9D 00 10 */	stw r4, 0x10(r29)
/* 805C3ED8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805C3EDC  80 7E 00 08 */	lwz r3, 8(r30)
/* 805C3EE0  80 1E 00 04 */	lwz r0, 4(r30)
/* 805C3EE4  7C 03 00 00 */	cmpw r3, r0
/* 805C3EE8  41 81 00 34 */	bgt lbl_805C3F1C
/* 805C3EEC  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805C3EF0  3C 80 A5 32 */	lis r4, 0xA532 /* 0xA53232FF@ha */
/* 805C3EF4  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805C3EF8  3C 60 FB 00 */	lis r3, 0xfb00
/* 805C3EFC  90 1D 00 18 */	stw r0, 0x18(r29)
/* 805C3F00  38 84 32 FF */	addi r4, r4, 0x32FF /* 0xA53232FF@l */
/* 805C3F04  38 00 FF FF */	li r0, -1
/* 805C3F08  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 805C3F0C  90 7D 00 20 */	stw r3, 0x20(r29)
/* 805C3F10  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805C3F14  3B BD 00 28 */	addi r29, r29, 0x28
/* 805C3F18  48 00 00 34 */	b lbl_805C3F4C
lbl_805C3F1C:
/* 805C3F1C  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805C3F20  3C 80 64 50 */	lis r4, 0x6450 /* 0x645050FF@ha */
/* 805C3F24  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805C3F28  3C 60 A5 9C */	lis r3, 0xA59C /* 0xA59B9BFF@ha */
/* 805C3F2C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 805C3F30  38 A4 50 FF */	addi r5, r4, 0x50FF /* 0x645050FF@l */
/* 805C3F34  3C 80 FB 00 */	lis r4, 0xfb00
/* 805C3F38  38 03 9B FF */	addi r0, r3, 0x9BFF /* 0xA59B9BFF@l */
/* 805C3F3C  90 BD 00 1C */	stw r5, 0x1c(r29)
/* 805C3F40  90 9D 00 20 */	stw r4, 0x20(r29)
/* 805C3F44  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805C3F48  3B BD 00 28 */	addi r29, r29, 0x28
lbl_805C3F4C:
/* 805C3F4C  3C 00 DE 00 */	lis r0, 0xde00
/* 805C3F50  3C 60 80 A1 */	lis r3, tyo_win_moji2T_model@ha /* 0x80A08CD8@ha */
/* 805C3F54  90 1D 00 00 */	stw r0, 0(r29)
/* 805C3F58  38 03 8C D8 */	addi r0, r3, tyo_win_moji2T_model@l /* 0x80A08CD8@l */
/* 805C3F5C  90 1D 00 04 */	stw r0, 4(r29)
/* 805C3F60  80 7E 00 08 */	lwz r3, 8(r30)
/* 805C3F64  80 1E 00 04 */	lwz r0, 4(r30)
/* 805C3F68  7C 03 00 00 */	cmpw r3, r0
/* 805C3F6C  41 80 00 34 */	blt lbl_805C3FA0
/* 805C3F70  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805C3F74  3C 80 14 CD */	lis r4, 0x14CD /* 0x14CD14FF@ha */
/* 805C3F78  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805C3F7C  3C 60 FB 00 */	lis r3, 0xfb00
/* 805C3F80  90 1D 00 08 */	stw r0, 8(r29)
/* 805C3F84  38 84 14 FF */	addi r4, r4, 0x14FF /* 0x14CD14FF@l */
/* 805C3F88  38 00 FF FF */	li r0, -1
/* 805C3F8C  90 9D 00 0C */	stw r4, 0xc(r29)
/* 805C3F90  90 7D 00 10 */	stw r3, 0x10(r29)
/* 805C3F94  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805C3F98  3B BD 00 18 */	addi r29, r29, 0x18
/* 805C3F9C  48 00 00 34 */	b lbl_805C3FD0
lbl_805C3FA0:
/* 805C3FA0  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805C3FA4  3C 80 46 5F */	lis r4, 0x465F /* 0x465F46FF@ha */
/* 805C3FA8  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805C3FAC  3C 60 9B A6 */	lis r3, 0x9BA6 /* 0x9BA59BFF@ha */
/* 805C3FB0  90 1D 00 08 */	stw r0, 8(r29)
/* 805C3FB4  38 A4 46 FF */	addi r5, r4, 0x46FF /* 0x465F46FF@l */
/* 805C3FB8  3C 80 FB 00 */	lis r4, 0xfb00
/* 805C3FBC  38 03 9B FF */	addi r0, r3, 0x9BFF /* 0x9BA59BFF@l */
/* 805C3FC0  90 BD 00 0C */	stw r5, 0xc(r29)
/* 805C3FC4  90 9D 00 10 */	stw r4, 0x10(r29)
/* 805C3FC8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805C3FCC  3B BD 00 18 */	addi r29, r29, 0x18
lbl_805C3FD0:
/* 805C3FD0  7F A4 EB 78 */	mr r4, r29
/* 805C3FD4  3C 00 DE 00 */	lis r0, 0xde00
/* 805C3FD8  3C 60 80 A1 */	lis r3, tyo_win_moji3T_model@ha /* 0x80A08D20@ha */
/* 805C3FDC  90 1D 00 00 */	stw r0, 0(r29)
/* 805C3FE0  38 03 8D 20 */	addi r0, r3, tyo_win_moji3T_model@l /* 0x80A08D20@l */
/* 805C3FE4  3B BD 00 08 */	addi r29, r29, 8
/* 805C3FE8  90 04 00 04 */	stw r0, 4(r4)
/* 805C3FEC  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 805C3FF0  39 61 00 30 */	addi r11, r1, 0x30
/* 805C3FF4  4B AD 6F 29 */	bl func_8009AF1C
/* 805C3FF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C3FFC  7C 08 03 A6 */	mtlr r0
/* 805C4000  38 21 00 30 */	addi r1, r1, 0x30
/* 805C4004  4E 80 00 20 */	blr 
