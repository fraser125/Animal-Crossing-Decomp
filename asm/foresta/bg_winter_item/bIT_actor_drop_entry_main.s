lbl_804C07E4:
/* 804C07E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C07E8  7C 08 02 A6 */	mflr r0
/* 804C07EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C07F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C07F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804C07F8  7C 9E 23 78 */	mr r30, r4
/* 804C07FC  A8 03 00 04 */	lha r0, 4(r3)
/* 804C0800  83 E3 00 00 */	lwz r31, 0(r3)
/* 804C0804  38 60 00 00 */	li r3, 0
/* 804C0808  7C 09 03 A6 */	mtctr r0
/* 804C080C  2C 00 00 00 */	cmpwi r0, 0
/* 804C0810  40 81 02 44 */	ble lbl_804C0A54
lbl_804C0814:
/* 804C0814  80 1F 00 00 */	lwz r0, 0(r31)
/* 804C0818  28 00 00 00 */	cmplwi r0, 0
/* 804C081C  40 82 02 30 */	bne lbl_804C0A4C
/* 804C0820  7F C3 F3 78 */	mr r3, r30
/* 804C0824  7F E4 FB 78 */	mr r4, r31
/* 804C0828  38 A0 00 A8 */	li r5, 0xa8
/* 804C082C  4B B9 C7 F1 */	bl func_8005D01C
/* 804C0830  A0 7E 00 0E */	lhz r3, 0xe(r30)
/* 804C0834  38 00 00 00 */	li r0, 0
/* 804C0838  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 804C083C  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 804C0840  A0 1E 00 6C */	lhz r0, 0x6c(r30)
/* 804C0844  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C0848  41 82 00 18 */	beq lbl_804C0860
/* 804C084C  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 804C0850  38 7F 00 2C */	addi r3, r31, 0x2c
/* 804C0854  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 804C0858  4B EF A6 65 */	bl xyz_t_move
/* 804C085C  48 00 00 18 */	b lbl_804C0874
lbl_804C0860:
/* 804C0860  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646164@ha */
/* 804C0864  C0 03 61 64 */	lfs f0, lit_845@l(r3)  /* 0x80646164@l */
/* 804C0868  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804C086C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804C0870  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804C0874:
/* 804C0874  38 00 00 00 */	li r0, 0
/* 804C0878  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804C087C  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 804C0880  38 83 61 3C */	addi r4, r3, data_8064613C@l /* 0x8064613C@l */
/* 804C0884  C0 04 00 00 */	lfs f0, 0(r4)
/* 804C0888  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804C088C  B0 1F 00 46 */	sth r0, 0x46(r31)
/* 804C0890  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 804C0894  38 7F 00 38 */	addi r3, r31, 0x38
/* 804C0898  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 804C089C  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 804C08A0  4B EF A6 1D */	bl xyz_t_move
/* 804C08A4  38 00 00 00 */	li r0, 0
/* 804C08A8  3C 60 80 4C */	lis r3, bIT_actor_drop_draw_nrm@ha /* 0x804C2D7C@ha */
/* 804C08AC  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804C08B0  38 03 2D 7C */	addi r0, r3, bIT_actor_drop_draw_nrm@l /* 0x804C2D7C@l */
/* 804C08B4  90 1F 00 04 */	stw r0, 4(r31)
/* 804C08B8  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C08BC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C08C0  41 82 00 58 */	beq lbl_804C0918
/* 804C08C4  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C08C8  38 9E 00 20 */	addi r4, r30, 0x20
/* 804C08CC  4B EF A5 F1 */	bl xyz_t_move
/* 804C08D0  38 C0 00 00 */	li r6, 0
/* 804C08D4  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646180@ha */
/* 804C08D8  B0 DF 00 58 */	sth r6, 0x58(r31)
/* 804C08DC  38 A3 61 80 */	addi r5, r3, lit_1188@l /* 0x80646180@l */
/* 804C08E0  38 00 17 70 */	li r0, 0x1770
/* 804C08E4  3C 80 80 4C */	lis r4, bIT_actor_drop_move_plant@ha /* 0x804C237C@ha */
/* 804C08E8  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 804C08EC  3C 60 80 4C */	lis r3, bIT_actor_drop_move_plant_destruct@ha /* 0x804C0208@ha */
/* 804C08F0  C0 05 00 00 */	lfs f0, 0(r5)
/* 804C08F4  38 A0 00 FF */	li r5, 0xff
/* 804C08F8  38 84 23 7C */	addi r4, r4, bIT_actor_drop_move_plant@l /* 0x804C237C@l */
/* 804C08FC  38 03 02 08 */	addi r0, r3, bIT_actor_drop_move_plant_destruct@l /* 0x804C0208@l */
/* 804C0900  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 804C0904  98 BF 00 72 */	stb r5, 0x72(r31)
/* 804C0908  90 9F 00 00 */	stw r4, 0(r31)
/* 804C090C  90 1F 00 08 */	stw r0, 8(r31)
/* 804C0910  B0 DF 00 6E */	sth r6, 0x6e(r31)
/* 804C0914  48 00 01 30 */	b lbl_804C0A44
lbl_804C0918:
/* 804C0918  38 7F 00 94 */	addi r3, r31, 0x94
/* 804C091C  38 9E 00 14 */	addi r4, r30, 0x14
/* 804C0920  4B EF A5 9D */	bl xyz_t_move
/* 804C0924  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804C0928  28 00 00 62 */	cmplwi r0, 0x62
/* 804C092C  41 82 00 AC */	beq lbl_804C09D8
/* 804C0930  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 804C0934  38 61 00 08 */	addi r3, r1, 8
/* 804C0938  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 804C093C  90 81 00 08 */	stw r4, 8(r1)
/* 804C0940  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C0944  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 804C0948  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C094C  4B EE 6A E5 */	bl mFI_GetUnitFG
/* 804C0950  28 03 00 00 */	cmplwi r3, 0
/* 804C0954  41 82 00 84 */	beq lbl_804C09D8
/* 804C0958  A0 03 00 00 */	lhz r0, 0(r3)
/* 804C095C  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804C0960  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C0964  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C0968  40 82 00 70 */	bne lbl_804C09D8
/* 804C096C  A0 1F 00 74 */	lhz r0, 0x74(r31)
/* 804C0970  28 00 00 11 */	cmplwi r0, 0x11
/* 804C0974  41 80 00 0C */	blt lbl_804C0980
/* 804C0978  28 00 00 29 */	cmplwi r0, 0x29
/* 804C097C  40 81 00 0C */	ble lbl_804C0988
lbl_804C0980:
/* 804C0980  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C0984  40 82 00 54 */	bne lbl_804C09D8
lbl_804C0988:
/* 804C0988  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C098C  60 00 00 08 */	ori r0, r0, 8
/* 804C0990  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804C0994  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804C0998  28 00 29 02 */	cmplwi r0, 0x2902
/* 804C099C  41 80 00 18 */	blt lbl_804C09B4
/* 804C09A0  28 00 29 0A */	cmplwi r0, 0x290a
/* 804C09A4  41 81 00 10 */	bgt lbl_804C09B4
/* 804C09A8  38 00 00 68 */	li r0, 0x68
/* 804C09AC  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804C09B0  48 00 00 28 */	b lbl_804C09D8
lbl_804C09B4:
/* 804C09B4  28 00 29 00 */	cmplwi r0, 0x2900
/* 804C09B8  40 82 00 10 */	bne lbl_804C09C8
/* 804C09BC  38 00 08 00 */	li r0, 0x800
/* 804C09C0  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804C09C4  48 00 00 14 */	b lbl_804C09D8
lbl_804C09C8:
/* 804C09C8  28 00 29 01 */	cmplwi r0, 0x2901
/* 804C09CC  40 82 00 0C */	bne lbl_804C09D8
/* 804C09D0  38 00 08 5D */	li r0, 0x85d
/* 804C09D4  B0 1F 00 10 */	sth r0, 0x10(r31)
lbl_804C09D8:
/* 804C09D8  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C09DC  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C09E0  38 9F 00 20 */	addi r4, r31, 0x20
/* 804C09E4  60 00 20 00 */	ori r0, r0, 0x2000
/* 804C09E8  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804C09EC  4B EF A7 45 */	bl search_position_angleY
/* 804C09F0  B0 7F 00 5C */	sth r3, 0x5c(r31)
/* 804C09F4  38 00 00 FF */	li r0, 0xff
/* 804C09F8  3C 80 80 4C */	lis r4, bIT_actor_drop_move_fly@ha /* 0x804C2774@ha */
/* 804C09FC  3C 60 80 4C */	lis r3, bIT_actor_drop_move_fly_destruct@ha /* 0x804C06D0@ha */
/* 804C0A00  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804C0A04  38 84 27 74 */	addi r4, r4, bIT_actor_drop_move_fly@l /* 0x804C2774@l */
/* 804C0A08  38 63 06 D0 */	addi r3, r3, bIT_actor_drop_move_fly_destruct@l /* 0x804C06D0@l */
/* 804C0A0C  38 00 00 00 */	li r0, 0
/* 804C0A10  90 9F 00 00 */	stw r4, 0(r31)
/* 804C0A14  90 7F 00 08 */	stw r3, 8(r31)
/* 804C0A18  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804C0A1C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 804C0A20  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 804C0A24  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C0A28  FC 00 02 10 */	fabs f0, f0
/* 804C0A2C  FC 00 00 18 */	frsp f0, f0
/* 804C0A30  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 804C0A34  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804C0A38  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 804C0A3C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 804C0A40  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
lbl_804C0A44:
/* 804C0A44  38 60 00 01 */	li r3, 1
/* 804C0A48  48 00 00 0C */	b lbl_804C0A54
lbl_804C0A4C:
/* 804C0A4C  3B FF 00 A8 */	addi r31, r31, 0xa8
/* 804C0A50  42 00 FD C4 */	bdnz lbl_804C0814
lbl_804C0A54:
/* 804C0A54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C0A58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C0A5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804C0A60  7C 08 03 A6 */	mtlr r0
/* 804C0A64  38 21 00 20 */	addi r1, r1, 0x20
/* 804C0A68  4E 80 00 20 */	blr 
