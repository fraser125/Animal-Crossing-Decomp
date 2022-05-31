lbl_80564D44:
/* 80564D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80564D48  7C 08 02 A6 */	mflr r0
/* 80564D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80564D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80564D54  93 C1 00 08 */	stw r30, 8(r1)
/* 80564D58  7C 7E 1B 78 */	mr r30, r3
/* 80564D5C  7C 83 23 78 */	mr r3, r4
/* 80564D60  4B E7 48 E1 */	bl get_player_actor_withoutCheck
/* 80564D64  4B FF FF 81 */	bl aNNW_get_area
/* 80564D68  7C 60 1B 78 */	mr r0, r3
/* 80564D6C  7F C3 F3 78 */	mr r3, r30
/* 80564D70  7C 1F 03 78 */	mr r31, r0
/* 80564D74  4B FF FF 71 */	bl aNNW_get_area
/* 80564D78  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80564D7C  28 00 00 09 */	cmplwi r0, 9
/* 80564D80  40 82 00 08 */	bne lbl_80564D88
/* 80564D84  8B FE 09 B8 */	lbz r31, 0x9b8(r30)
lbl_80564D88:
/* 80564D88  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80564D8C  28 00 00 09 */	cmplwi r0, 9
/* 80564D90  40 82 00 08 */	bne lbl_80564D98
/* 80564D94  88 7E 09 B9 */	lbz r3, 0x9b9(r30)
lbl_80564D98:
/* 80564D98  9B FE 09 B8 */	stb r31, 0x9b8(r30)
/* 80564D9C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80564DA0  98 7E 09 B9 */	stb r3, 0x9b9(r30)
/* 80564DA4  41 82 00 0C */	beq lbl_80564DB0
/* 80564DA8  28 00 00 01 */	cmplwi r0, 1
/* 80564DAC  40 82 00 18 */	bne lbl_80564DC4
lbl_80564DB0:
/* 80564DB0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80564DB4  28 00 00 01 */	cmplwi r0, 1
/* 80564DB8  40 82 00 0C */	bne lbl_80564DC4
/* 80564DBC  38 60 00 00 */	li r3, 0
/* 80564DC0  48 00 00 A0 */	b lbl_80564E60
lbl_80564DC4:
/* 80564DC4  88 1E 09 AF */	lbz r0, 0x9af(r30)
/* 80564DC8  28 00 00 05 */	cmplwi r0, 5
/* 80564DCC  41 82 00 0C */	beq lbl_80564DD8
/* 80564DD0  28 00 00 06 */	cmplwi r0, 6
/* 80564DD4  40 82 00 10 */	bne lbl_80564DE4
lbl_80564DD8:
/* 80564DD8  3C 80 80 65 */	lis r4, lit_1532@ha /* 0x8064978C@ha */
/* 80564DDC  C0 24 97 8C */	lfs f1, lit_1532@l(r4)  /* 0x8064978C@l */
/* 80564DE0  48 00 00 0C */	b lbl_80564DEC
lbl_80564DE4:
/* 80564DE4  3C 80 80 65 */	lis r4, lit_1533@ha /* 0x80649790@ha */
/* 80564DE8  C0 24 97 90 */	lfs f1, lit_1533@l(r4)  /* 0x80649790@l */
lbl_80564DEC:
/* 80564DEC  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80564DF0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80564DF4  40 80 00 50 */	bge lbl_80564E44
/* 80564DF8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80564DFC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80564E00  7C 05 00 40 */	cmplw r5, r0
/* 80564E04  40 82 00 0C */	bne lbl_80564E10
/* 80564E08  38 60 00 00 */	li r3, 0
/* 80564E0C  48 00 00 54 */	b lbl_80564E60
lbl_80564E10:
/* 80564E10  1C C0 00 05 */	mulli r6, r0, 5
/* 80564E14  3C 80 80 6C */	lis r4, near_area_table@ha /* 0x806BE118@ha */
/* 80564E18  38 00 00 05 */	li r0, 5
/* 80564E1C  38 84 E1 18 */	addi r4, r4, near_area_table@l /* 0x806BE118@l */
/* 80564E20  7C 84 32 14 */	add r4, r4, r6
/* 80564E24  7C 09 03 A6 */	mtctr r0
lbl_80564E28:
/* 80564E28  88 04 00 00 */	lbz r0, 0(r4)
/* 80564E2C  7C 00 28 40 */	cmplw r0, r5
/* 80564E30  40 82 00 0C */	bne lbl_80564E3C
/* 80564E34  38 60 00 00 */	li r3, 0
/* 80564E38  48 00 00 28 */	b lbl_80564E60
lbl_80564E3C:
/* 80564E3C  38 84 00 01 */	addi r4, r4, 1
/* 80564E40  42 00 FF E8 */	bdnz lbl_80564E28
lbl_80564E44:
/* 80564E44  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 80564E48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80564E4C  7C 04 00 40 */	cmplw r4, r0
/* 80564E50  40 82 00 0C */	bne lbl_80564E5C
/* 80564E54  38 60 00 01 */	li r3, 1
/* 80564E58  48 00 00 08 */	b lbl_80564E60
lbl_80564E5C:
/* 80564E5C  38 60 00 0D */	li r3, 0xd
lbl_80564E60:
/* 80564E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80564E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80564E68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80564E6C  7C 08 03 A6 */	mtlr r0
/* 80564E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80564E74  4E 80 00 20 */	blr 
