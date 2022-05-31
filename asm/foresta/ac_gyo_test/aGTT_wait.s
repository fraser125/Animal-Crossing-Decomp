lbl_805A3D7C:
/* 805A3D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3D80  7C 08 02 A6 */	mflr r0
/* 805A3D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3D8C  7C 7F 1B 78 */	mr r31, r3
/* 805A3D90  93 C1 00 08 */	stw r30, 8(r1)
/* 805A3D94  7C 9E 23 78 */	mr r30, r4
/* 805A3D98  4B FF FA 09 */	bl aGTT_flow_direction
/* 805A3D9C  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 805A3DA0  2C 03 00 00 */	cmpwi r3, 0
/* 805A3DA4  40 82 00 0C */	bne lbl_805A3DB0
/* 805A3DA8  38 00 00 00 */	li r0, 0
/* 805A3DAC  48 00 00 0C */	b lbl_805A3DB8
lbl_805A3DB0:
/* 805A3DB0  38 03 FF FF */	addi r0, r3, -1
/* 805A3DB4  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_805A3DB8:
/* 805A3DB8  2C 00 00 00 */	cmpwi r0, 0
/* 805A3DBC  40 82 00 64 */	bne lbl_805A3E20
/* 805A3DC0  4B AB 8F 35 */	bl fqrand
/* 805A3DC4  3C 80 80 65 */	lis r4, lit_730@ha /* 0x8064A3F8@ha */
/* 805A3DC8  3C 60 80 65 */	lis r3, lit_524@ha /* 0x8064A3D4@ha */
/* 805A3DCC  C0 44 A3 F8 */	lfs f2, lit_730@l(r4)  /* 0x8064A3F8@l */
/* 805A3DD0  C0 03 A3 D4 */	lfs f0, lit_524@l(r3)  /* 0x8064A3D4@l */
/* 805A3DD4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A3DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A3DDC  40 80 00 10 */	bge lbl_805A3DEC
/* 805A3DE0  38 00 00 00 */	li r0, 0
/* 805A3DE4  98 1F 02 42 */	stb r0, 0x242(r31)
/* 805A3DE8  48 00 00 28 */	b lbl_805A3E10
lbl_805A3DEC:
/* 805A3DEC  3C 60 80 65 */	lis r3, lit_731@ha /* 0x8064A3FC@ha */
/* 805A3DF0  C0 03 A3 FC */	lfs f0, lit_731@l(r3)  /* 0x8064A3FC@l */
/* 805A3DF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A3DF8  40 80 00 10 */	bge lbl_805A3E08
/* 805A3DFC  38 00 00 01 */	li r0, 1
/* 805A3E00  98 1F 02 42 */	stb r0, 0x242(r31)
/* 805A3E04  48 00 00 0C */	b lbl_805A3E10
lbl_805A3E08:
/* 805A3E08  38 00 00 02 */	li r0, 2
/* 805A3E0C  98 1F 02 42 */	stb r0, 0x242(r31)
lbl_805A3E10:
/* 805A3E10  7F E3 FB 78 */	mr r3, r31
/* 805A3E14  38 80 00 00 */	li r4, 0
/* 805A3E18  48 00 0E 2D */	bl aGTT_setupAction
/* 805A3E1C  48 00 00 38 */	b lbl_805A3E54
lbl_805A3E20:
/* 805A3E20  7F E3 FB 78 */	mr r3, r31
/* 805A3E24  7F C4 F3 78 */	mr r4, r30
/* 805A3E28  4B FF FC 15 */	bl aGTT_player_near
/* 805A3E2C  2C 03 00 00 */	cmpwi r3, 0
/* 805A3E30  40 82 00 24 */	bne lbl_805A3E54
/* 805A3E34  7F E3 FB 78 */	mr r3, r31
/* 805A3E38  7F C4 F3 78 */	mr r4, r30
/* 805A3E3C  4B FF FA 41 */	bl aGTT_search_Uki
/* 805A3E40  2C 03 00 01 */	cmpwi r3, 1
/* 805A3E44  40 82 00 10 */	bne lbl_805A3E54
/* 805A3E48  7F E3 FB 78 */	mr r3, r31
/* 805A3E4C  38 80 00 03 */	li r4, 3
/* 805A3E50  48 00 0D F5 */	bl aGTT_setupAction
lbl_805A3E54:
/* 805A3E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A3E5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A3E60  7C 08 03 A6 */	mtlr r0
/* 805A3E64  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3E68  4E 80 00 20 */	blr 
