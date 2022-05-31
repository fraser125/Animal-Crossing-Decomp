lbl_804259EC:
/* 804259EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804259F0  7C 08 02 A6 */	mflr r0
/* 804259F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804259F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804259FC  7C 9F 23 78 */	mr r31, r4
/* 80425A00  93 C1 00 08 */	stw r30, 8(r1)
/* 80425A04  7C 7E 1B 78 */	mr r30, r3
/* 80425A08  80 63 01 74 */	lwz r3, 0x174(r3)
/* 80425A0C  28 03 00 00 */	cmplwi r3, 0
/* 80425A10  41 82 00 18 */	beq lbl_80425A28
/* 80425A14  88 03 06 14 */	lbz r0, 0x614(r3)
/* 80425A18  28 00 00 00 */	cmplwi r0, 0
/* 80425A1C  41 82 00 0C */	beq lbl_80425A28
/* 80425A20  38 00 00 00 */	li r0, 0
/* 80425A24  98 03 06 14 */	stb r0, 0x614(r3)
lbl_80425A28:
/* 80425A28  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80425A2C  54 00 02 0C */	rlwinm r0, r0, 0, 8, 6
/* 80425A30  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80425A34  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80425A38  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80425A3C  41 82 01 04 */	beq lbl_80425B40
/* 80425A40  7F C3 F3 78 */	mr r3, r30
/* 80425A44  4B FF FF 11 */	bl aGYO_KAGE_position_move
/* 80425A48  7F C3 F3 78 */	mr r3, r30
/* 80425A4C  4B FF FE 75 */	bl aGYO_KAGE_BGcheck
/* 80425A50  80 1E 01 9C */	lwz r0, 0x19c(r30)
/* 80425A54  2C 00 00 60 */	cmpwi r0, 0x60
/* 80425A58  40 82 00 6C */	bne lbl_80425AC4
/* 80425A5C  A8 1E 00 24 */	lha r0, 0x24(r30)
/* 80425A60  2C 00 00 03 */	cmpwi r0, 3
/* 80425A64  41 82 00 3C */	beq lbl_80425AA0
/* 80425A68  40 80 00 18 */	bge lbl_80425A80
/* 80425A6C  2C 00 00 02 */	cmpwi r0, 2
/* 80425A70  40 80 00 44 */	bge lbl_80425AB4
/* 80425A74  2C 00 00 00 */	cmpwi r0, 0
/* 80425A78  40 80 00 14 */	bge lbl_80425A8C
/* 80425A7C  48 00 00 48 */	b lbl_80425AC4
lbl_80425A80:
/* 80425A80  2C 00 00 06 */	cmpwi r0, 6
/* 80425A84  40 80 00 40 */	bge lbl_80425AC4
/* 80425A88  48 00 00 2C */	b lbl_80425AB4
lbl_80425A8C:
/* 80425A8C  7F C3 F3 78 */	mr r3, r30
/* 80425A90  7F E4 FB 78 */	mr r4, r31
/* 80425A94  38 A0 00 02 */	li r5, 2
/* 80425A98  4B FF FB 4D */	bl aGYO_KAGE_effect_hamon
/* 80425A9C  48 00 00 28 */	b lbl_80425AC4
lbl_80425AA0:
/* 80425AA0  7F C3 F3 78 */	mr r3, r30
/* 80425AA4  7F E4 FB 78 */	mr r4, r31
/* 80425AA8  38 A0 00 01 */	li r5, 1
/* 80425AAC  4B FF FB 39 */	bl aGYO_KAGE_effect_hamon
/* 80425AB0  48 00 00 14 */	b lbl_80425AC4
lbl_80425AB4:
/* 80425AB4  7F C3 F3 78 */	mr r3, r30
/* 80425AB8  7F E4 FB 78 */	mr r4, r31
/* 80425ABC  38 A0 00 00 */	li r5, 0
/* 80425AC0  4B FF FB 25 */	bl aGYO_KAGE_effect_hamon
lbl_80425AC4:
/* 80425AC4  80 7E 01 9C */	lwz r3, 0x19c(r30)
/* 80425AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80425ACC  40 82 00 0C */	bne lbl_80425AD8
/* 80425AD0  38 00 00 00 */	li r0, 0
/* 80425AD4  48 00 00 0C */	b lbl_80425AE0
lbl_80425AD8:
/* 80425AD8  38 03 FF FF */	addi r0, r3, -1
/* 80425ADC  90 1E 01 9C */	stw r0, 0x19c(r30)
lbl_80425AE0:
/* 80425AE0  2C 00 00 00 */	cmpwi r0, 0
/* 80425AE4  40 82 00 10 */	bne lbl_80425AF4
/* 80425AE8  7F C3 F3 78 */	mr r3, r30
/* 80425AEC  4B F4 E9 55 */	bl Actor_delete
/* 80425AF0  48 00 00 44 */	b lbl_80425B34
lbl_80425AF4:
/* 80425AF4  7F C3 F3 78 */	mr r3, r30
/* 80425AF8  4B FF FB D9 */	bl aGYO_KAGE_Wall_Check
/* 80425AFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80425B00  41 82 00 10 */	beq lbl_80425B10
/* 80425B04  88 1E 01 A3 */	lbz r0, 0x1a3(r30)
/* 80425B08  28 00 00 00 */	cmplwi r0, 0
/* 80425B0C  41 82 00 34 */	beq lbl_80425B40
lbl_80425B10:
/* 80425B10  3C 60 80 64 */	lis r3, lit_488@ha /* 0x80643F2C@ha */
/* 80425B14  3C 80 80 64 */	lis r4, data_80643F1C@ha /* 0x80643F1C@ha */
/* 80425B18  38 A3 3F 2C */	addi r5, r3, lit_488@l /* 0x80643F2C@l */
/* 80425B1C  C0 44 3F 1C */	lfs f2, data_80643F1C@l(r4)  /* 0x80643F1C@l */
/* 80425B20  C0 25 00 00 */	lfs f1, 0(r5)
/* 80425B24  38 7E 00 74 */	addi r3, r30, 0x74
/* 80425B28  4B F9 51 41 */	bl chase_f
/* 80425B2C  38 00 00 00 */	li r0, 0
/* 80425B30  98 1E 01 A3 */	stb r0, 0x1a3(r30)
lbl_80425B34:
/* 80425B34  7F C3 F3 78 */	mr r3, r30
/* 80425B38  7F E4 FB 78 */	mr r4, r31
/* 80425B3C  4B FF FD C9 */	bl aGYO_KAGE_Cullcheck
lbl_80425B40:
/* 80425B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80425B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80425B48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80425B4C  7C 08 03 A6 */	mtlr r0
/* 80425B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80425B54  4E 80 00 20 */	blr 
