lbl_805FD714:
/* 805FD714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FD718  7C 08 02 A6 */	mflr r0
/* 805FD71C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FD720  39 61 00 20 */	addi r11, r1, 0x20
/* 805FD724  4B A9 D7 A5 */	bl func_8009AEC8
/* 805FD728  7C 7A 1B 78 */	mr r26, r3
/* 805FD72C  7C 9B 23 78 */	mr r27, r4
/* 805FD730  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805FD734  83 E5 09 7C */	lwz r31, 0x97c(r5)
/* 805FD738  83 A5 09 80 */	lwz r29, 0x980(r5)
/* 805FD73C  80 DF 00 00 */	lwz r6, 0(r31)
/* 805FD740  83 85 09 88 */	lwz r28, 0x988(r5)
/* 805FD744  1C 86 00 B4 */	mulli r4, r6, 0xb4
/* 805FD748  2C 06 00 00 */	cmpwi r6, 0
/* 805FD74C  3B C4 00 08 */	addi r30, r4, 8
/* 805FD750  7F DF F2 14 */	add r30, r31, r30
/* 805FD754  41 80 03 44 */	blt lbl_805FDA98
/* 805FD758  2C 06 00 04 */	cmpwi r6, 4
/* 805FD75C  41 80 00 08 */	blt lbl_805FD764
/* 805FD760  48 00 03 38 */	b lbl_805FDA98
lbl_805FD764:
/* 805FD764  A8 9D 00 16 */	lha r4, 0x16(r29)
/* 805FD768  2C 04 00 00 */	cmpwi r4, 0
/* 805FD76C  40 81 01 60 */	ble lbl_805FD8CC
/* 805FD770  28 1C 00 00 */	cmplwi r28, 0
/* 805FD774  41 82 01 58 */	beq lbl_805FD8CC
/* 805FD778  38 04 FF FF */	addi r0, r4, -1
/* 805FD77C  B0 1D 00 16 */	sth r0, 0x16(r29)
/* 805FD780  80 9F 00 00 */	lwz r4, 0(r31)
/* 805FD784  80 1F 00 04 */	lwz r0, 4(r31)
/* 805FD788  7C 04 00 00 */	cmpw r4, r0
/* 805FD78C  40 81 00 10 */	ble lbl_805FD79C
/* 805FD790  7F E4 FB 78 */	mr r4, r31
/* 805FD794  7F C5 F3 78 */	mr r5, r30
/* 805FD798  4B FF 20 FD */	bl mTG_return_tag_func
lbl_805FD79C:
/* 805FD79C  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 805FD7A0  2C 00 00 00 */	cmpwi r0, 0
/* 805FD7A4  40 82 00 F8 */	bne lbl_805FD89C
/* 805FD7A8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FD7AC  2C 00 00 03 */	cmpwi r0, 3
/* 805FD7B0  40 82 00 74 */	bne lbl_805FD824
/* 805FD7B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FD7B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FD7BC  3C A3 00 02 */	addis r5, r3, 2
/* 805FD7C0  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 805FD7C4  A0 03 04 A4 */	lhz r0, 0x4a4(r3)
/* 805FD7C8  28 00 22 24 */	cmplwi r0, 0x2224
/* 805FD7CC  41 80 00 0C */	blt lbl_805FD7D8
/* 805FD7D0  28 00 22 2B */	cmplwi r0, 0x222b
/* 805FD7D4  40 81 00 2C */	ble lbl_805FD800
lbl_805FD7D8:
/* 805FD7D8  38 00 00 02 */	li r0, 2
/* 805FD7DC  38 60 00 00 */	li r3, 0
/* 805FD7E0  B0 1D 02 32 */	sth r0, 0x232(r29)
/* 805FD7E4  38 00 00 03 */	li r0, 3
/* 805FD7E8  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 805FD7EC  A0 84 04 A4 */	lhz r4, 0x4a4(r4)
/* 805FD7F0  B0 9D 02 34 */	sth r4, 0x234(r29)
/* 805FD7F4  90 7D 03 60 */	stw r3, 0x360(r29)
/* 805FD7F8  98 1D 03 64 */	stb r0, 0x364(r29)
/* 805FD7FC  98 7D 03 65 */	stb r3, 0x365(r29)
lbl_805FD800:
/* 805FD800  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 805FD804  38 00 00 00 */	li r0, 0
/* 805FD808  7F 43 D3 78 */	mr r3, r26
/* 805FD80C  B0 04 04 A4 */	sth r0, 0x4a4(r4)
/* 805FD810  4B FF 3D 8D */	bl mTG_init_tag_data_item_win
/* 805FD814  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805FD818  38 00 00 00 */	li r0, 0
/* 805FD81C  B0 03 00 08 */	sth r0, 8(r3)
/* 805FD820  48 00 01 D4 */	b lbl_805FD9F4
lbl_805FD824:
/* 805FD824  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FD828  38 00 00 00 */	li r0, 0
/* 805FD82C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FD830  3C 63 00 02 */	addis r3, r3, 2
/* 805FD834  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805FD838  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 805FD83C  90 7C 03 C0 */	stw r3, 0x3c0(r28)
/* 805FD840  90 1C 03 C4 */	stw r0, 0x3c4(r28)
/* 805FD844  80 1B 00 00 */	lwz r0, 0(r27)
/* 805FD848  2C 00 00 0E */	cmpwi r0, 0xe
/* 805FD84C  40 82 00 0C */	bne lbl_805FD858
/* 805FD850  38 60 10 50 */	li r3, 0x1050
/* 805FD854  48 03 04 B1 */	bl sAdo_SysTrgStart
lbl_805FD858:
/* 805FD858  80 1B 00 00 */	lwz r0, 0(r27)
/* 805FD85C  2C 00 00 01 */	cmpwi r0, 1
/* 805FD860  40 82 00 30 */	bne lbl_805FD890
/* 805FD864  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 805FD868  2C 00 00 0D */	cmpwi r0, 0xd
/* 805FD86C  40 82 00 24 */	bne lbl_805FD890
/* 805FD870  7F 43 D3 78 */	mr r3, r26
/* 805FD874  4B FF 1D 71 */	bl func_805EF5E4
/* 805FD878  2C 03 00 00 */	cmpwi r3, 0
/* 805FD87C  41 82 00 14 */	beq lbl_805FD890
/* 805FD880  7F 43 D3 78 */	mr r3, r26
/* 805FD884  7F 64 DB 78 */	mr r4, r27
/* 805FD888  4B FF A1 55 */	bl mTG_exchange_proc
/* 805FD88C  48 00 02 0C */	b lbl_805FDA98
lbl_805FD890:
/* 805FD890  7F 43 D3 78 */	mr r3, r26
/* 805FD894  4B FF 3D 09 */	bl mTG_init_tag_data_item_win
/* 805FD898  48 00 01 5C */	b lbl_805FD9F4
lbl_805FD89C:
/* 805FD89C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FD8A0  80 9C 03 C0 */	lwz r4, 0x3c0(r28)
/* 805FD8A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FD8A8  3C 63 00 02 */	addis r3, r3, 2
/* 805FD8AC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805FD8B0  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 805FD8B4  7C 04 00 40 */	cmplw r4, r0
/* 805FD8B8  41 82 01 3C */	beq lbl_805FD9F4
/* 805FD8BC  80 1C 03 C4 */	lwz r0, 0x3c4(r28)
/* 805FD8C0  7C 04 02 14 */	add r0, r4, r0
/* 805FD8C4  90 1C 03 C0 */	stw r0, 0x3c0(r28)
/* 805FD8C8  48 00 01 2C */	b lbl_805FD9F4
lbl_805FD8CC:
/* 805FD8CC  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 805FD8D0  2C 00 00 00 */	cmpwi r0, 0
/* 805FD8D4  40 82 01 04 */	bne lbl_805FD9D8
/* 805FD8D8  A8 1D 02 30 */	lha r0, 0x230(r29)
/* 805FD8DC  2C 00 00 02 */	cmpwi r0, 2
/* 805FD8E0  41 82 00 F8 */	beq lbl_805FD9D8
/* 805FD8E4  2C 00 00 05 */	cmpwi r0, 5
/* 805FD8E8  41 82 00 F0 */	beq lbl_805FD9D8
/* 805FD8EC  2C 00 00 04 */	cmpwi r0, 4
/* 805FD8F0  41 82 00 E8 */	beq lbl_805FD9D8
/* 805FD8F4  A0 7F 03 74 */	lhz r3, 0x374(r31)
/* 805FD8F8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 805FD8FC  41 82 00 30 */	beq lbl_805FD92C
/* 805FD900  7F 43 D3 78 */	mr r3, r26
/* 805FD904  38 80 00 00 */	li r4, 0
/* 805FD908  38 A0 00 01 */	li r5, 1
/* 805FD90C  4B FF 1E A9 */	bl mTG_return_tag_init
/* 805FD910  A0 1F 03 74 */	lhz r0, 0x374(r31)
/* 805FD914  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 805FD918  B0 1F 03 74 */	sth r0, 0x374(r31)
/* 805FD91C  A0 1F 03 74 */	lhz r0, 0x374(r31)
/* 805FD920  60 00 00 02 */	ori r0, r0, 2
/* 805FD924  B0 1F 03 74 */	sth r0, 0x374(r31)
/* 805FD928  48 00 00 CC */	b lbl_805FD9F4
lbl_805FD92C:
/* 805FD92C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 805FD930  41 82 00 4C */	beq lbl_805FD97C
/* 805FD934  80 1F 00 04 */	lwz r0, 4(r31)
/* 805FD938  7C 06 00 00 */	cmpw r6, r0
/* 805FD93C  40 81 00 18 */	ble lbl_805FD954
/* 805FD940  7F 43 D3 78 */	mr r3, r26
/* 805FD944  7F E4 FB 78 */	mr r4, r31
/* 805FD948  7F C5 F3 78 */	mr r5, r30
/* 805FD94C  4B FF 1F 49 */	bl mTG_return_tag_func
/* 805FD950  48 00 00 A4 */	b lbl_805FD9F4
lbl_805FD954:
/* 805FD954  54 60 07 FA */	rlwinm r0, r3, 0, 0x1f, 0x1d
/* 805FD958  7F 43 D3 78 */	mr r3, r26
/* 805FD95C  B0 1F 03 74 */	sth r0, 0x374(r31)
/* 805FD960  7F 64 DB 78 */	mr r4, r27
/* 805FD964  7F C5 F3 78 */	mr r5, r30
/* 805FD968  A0 1F 03 74 */	lhz r0, 0x374(r31)
/* 805FD96C  60 00 00 04 */	ori r0, r0, 4
/* 805FD970  B0 1F 03 74 */	sth r0, 0x374(r31)
/* 805FD974  4B FF EB C5 */	bl mTG_move_decide
/* 805FD978  48 00 00 7C */	b lbl_805FD9F4
lbl_805FD97C:
/* 805FD97C  A8 05 00 0A */	lha r0, 0xa(r5)
/* 805FD980  2C 00 00 00 */	cmpwi r0, 0
/* 805FD984  41 81 00 28 */	bgt lbl_805FD9AC
/* 805FD988  7F 43 D3 78 */	mr r3, r26
/* 805FD98C  7F 64 DB 78 */	mr r4, r27
/* 805FD990  7F E5 FB 78 */	mr r5, r31
/* 805FD994  7F C6 F3 78 */	mr r6, r30
/* 805FD998  7F 87 E3 78 */	mr r7, r28
/* 805FD99C  4B FF FA E5 */	bl mTG_normal_move
/* 805FD9A0  2C 03 00 00 */	cmpwi r3, 0
/* 805FD9A4  41 82 00 50 */	beq lbl_805FD9F4
/* 805FD9A8  48 00 00 F0 */	b lbl_805FDA98
lbl_805FD9AC:
/* 805FD9AC  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FD9B0  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FD9B4  40 82 00 40 */	bne lbl_805FD9F4
/* 805FD9B8  80 1F 00 04 */	lwz r0, 4(r31)
/* 805FD9BC  7C 06 00 00 */	cmpw r6, r0
/* 805FD9C0  40 81 00 34 */	ble lbl_805FD9F4
/* 805FD9C4  7F 43 D3 78 */	mr r3, r26
/* 805FD9C8  7F E4 FB 78 */	mr r4, r31
/* 805FD9CC  7F C5 F3 78 */	mr r5, r30
/* 805FD9D0  4B FF 1E C5 */	bl mTG_return_tag_func
/* 805FD9D4  48 00 00 20 */	b lbl_805FD9F4
lbl_805FD9D8:
/* 805FD9D8  80 1F 00 04 */	lwz r0, 4(r31)
/* 805FD9DC  7C 06 00 00 */	cmpw r6, r0
/* 805FD9E0  40 81 00 14 */	ble lbl_805FD9F4
/* 805FD9E4  7F 43 D3 78 */	mr r3, r26
/* 805FD9E8  7F E4 FB 78 */	mr r4, r31
/* 805FD9EC  7F C5 F3 78 */	mr r5, r30
/* 805FD9F0  4B FF 1E A5 */	bl mTG_return_tag_func
lbl_805FD9F4:
/* 805FD9F4  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 805FD9F8  7F 43 D3 78 */	mr r3, r26
/* 805FD9FC  81 84 09 14 */	lwz r12, 0x914(r4)
/* 805FDA00  7D 89 03 A6 */	mtctr r12
/* 805FDA04  4E 80 04 21 */	bctrl 
/* 805FDA08  80 7A 00 04 */	lwz r3, 4(r26)
/* 805FDA0C  2C 03 00 17 */	cmpwi r3, 0x17
/* 805FDA10  41 82 00 14 */	beq lbl_805FDA24
/* 805FDA14  2C 03 00 18 */	cmpwi r3, 0x18
/* 805FDA18  41 82 00 0C */	beq lbl_805FDA24
/* 805FDA1C  2C 03 00 1A */	cmpwi r3, 0x1a
/* 805FDA20  40 82 00 6C */	bne lbl_805FDA8C
lbl_805FDA24:
/* 805FDA24  A0 1D 02 34 */	lhz r0, 0x234(r29)
/* 805FDA28  28 00 00 00 */	cmplwi r0, 0
/* 805FDA2C  41 82 00 60 */	beq lbl_805FDA8C
/* 805FDA30  2C 03 00 1A */	cmpwi r3, 0x1a
/* 805FDA34  40 82 00 48 */	bne lbl_805FDA7C
/* 805FDA38  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FDA3C  2C 00 00 18 */	cmpwi r0, 0x18
/* 805FDA40  41 82 00 0C */	beq lbl_805FDA4C
/* 805FDA44  2C 00 00 1A */	cmpwi r0, 0x1a
/* 805FDA48  40 82 00 34 */	bne lbl_805FDA7C
lbl_805FDA4C:
/* 805FDA4C  80 1F 00 00 */	lwz r0, 0(r31)
/* 805FDA50  2C 00 00 01 */	cmpwi r0, 1
/* 805FDA54  40 82 00 28 */	bne lbl_805FDA7C
/* 805FDA58  1C 00 00 B4 */	mulli r0, r0, 0xb4
/* 805FDA5C  7C 7F 02 14 */	add r3, r31, r0
/* 805FDA60  88 03 00 08 */	lbz r0, 8(r3)
/* 805FDA64  28 00 00 40 */	cmplwi r0, 0x40
/* 805FDA68  40 82 00 14 */	bne lbl_805FDA7C
/* 805FDA6C  A0 1F 03 74 */	lhz r0, 0x374(r31)
/* 805FDA70  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 805FDA74  B0 1F 03 74 */	sth r0, 0x374(r31)
/* 805FDA78  48 00 00 20 */	b lbl_805FDA98
lbl_805FDA7C:
/* 805FDA7C  A0 1F 03 74 */	lhz r0, 0x374(r31)
/* 805FDA80  60 00 00 08 */	ori r0, r0, 8
/* 805FDA84  B0 1F 03 74 */	sth r0, 0x374(r31)
/* 805FDA88  48 00 00 10 */	b lbl_805FDA98
lbl_805FDA8C:
/* 805FDA8C  A0 1F 03 74 */	lhz r0, 0x374(r31)
/* 805FDA90  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 805FDA94  B0 1F 03 74 */	sth r0, 0x374(r31)
lbl_805FDA98:
/* 805FDA98  39 61 00 20 */	addi r11, r1, 0x20
/* 805FDA9C  4B A9 D4 79 */	bl func_8009AF14
/* 805FDAA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FDAA4  7C 08 03 A6 */	mtlr r0
/* 805FDAA8  38 21 00 20 */	addi r1, r1, 0x20
/* 805FDAAC  4E 80 00 20 */	blr 
