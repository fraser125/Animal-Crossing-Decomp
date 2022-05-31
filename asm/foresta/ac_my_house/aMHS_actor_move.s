lbl_805B5AB4:
/* 805B5AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B5AB8  7C 08 02 A6 */	mflr r0
/* 805B5ABC  3C A0 80 6C */	lis r5, drtbl@ha /* 0x806C5FD0@ha */
/* 805B5AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B5AC4  38 C5 5F D0 */	addi r6, r5, drtbl@l /* 0x806C5FD0@l */
/* 805B5AC8  3C 00 43 30 */	lis r0, 0x4330
/* 805B5ACC  3C A0 80 65 */	lis r5, lit_731@ha /* 0x8064A994@ha */
/* 805B5AD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B5AD4  7C 7F 1B 78 */	mr r31, r3
/* 805B5AD8  C8 25 A9 94 */	lfd f1, lit_731@l(r5)  /* 0x8064A994@l */
/* 805B5ADC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B5AE0  7C 9E 23 78 */	mr r30, r4
/* 805B5AE4  80 E3 02 B0 */	lwz r7, 0x2b0(r3)
/* 805B5AE8  90 01 00 08 */	stw r0, 8(r1)
/* 805B5AEC  7C C6 38 AE */	lbzx r6, r6, r7
/* 805B5AF0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805B5AF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 805B5AF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B5AFC  D0 03 02 D0 */	stfs f0, 0x2d0(r3)
/* 805B5B00  4B FF F3 D5 */	bl aMHS_set_door_SE
/* 805B5B04  4B E0 43 9D */	bl mEnv_GetWindPowerF
/* 805B5B08  3C 60 80 65 */	lis r3, lit_729@ha /* 0x8064A990@ha */
/* 805B5B0C  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 805B5B10  38 83 A9 90 */	addi r4, r3, lit_729@l /* 0x8064A990@l */
/* 805B5B14  7F E3 FB 78 */	mr r3, r31
/* 805B5B18  C0 04 00 00 */	lfs f0, 0(r4)
/* 805B5B1C  7F C4 F3 78 */	mr r4, r30
/* 805B5B20  EC 00 00 72 */	fmuls f0, f0, f1
/* 805B5B24  FC 00 00 1E */	fctiwz f0, f0
/* 805B5B28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B5B2C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805B5B30  7C 05 00 50 */	subf r0, r5, r0
/* 805B5B34  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 805B5B38  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805B5B3C  7D 89 03 A6 */	mtctr r12
/* 805B5B40  4E 80 04 21 */	bctrl 
/* 805B5B44  7F E3 FB 78 */	mr r3, r31
/* 805B5B48  4B FF FC E5 */	bl aMHS_light_ctrl
/* 805B5B4C  2C 03 00 00 */	cmpwi r3, 0
/* 805B5B50  41 82 00 18 */	beq lbl_805B5B68
/* 805B5B54  38 7F 00 34 */	addi r3, r31, 0x34
/* 805B5B58  38 80 3F FF */	li r4, 0x3fff
/* 805B5B5C  38 A0 01 40 */	li r5, 0x140
/* 805B5B60  4B E0 50 99 */	bl chase_s
/* 805B5B64  48 00 00 14 */	b lbl_805B5B78
lbl_805B5B68:
/* 805B5B68  38 7F 00 34 */	addi r3, r31, 0x34
/* 805B5B6C  38 80 00 00 */	li r4, 0
/* 805B5B70  38 A0 01 40 */	li r5, 0x140
/* 805B5B74  4B E0 50 85 */	bl chase_s
lbl_805B5B78:
/* 805B5B78  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 805B5B7C  2C 00 00 00 */	cmpwi r0, 0
/* 805B5B80  40 81 00 3C */	ble lbl_805B5BBC
/* 805B5B84  3C 80 80 6C */	lis r4, door_data@ha /* 0x806C5FBC@ha */
/* 805B5B88  7F C3 F3 78 */	mr r3, r30
/* 805B5B8C  38 84 5F BC */	addi r4, r4, door_data@l /* 0x806C5FBC@l */
/* 805B5B90  38 A0 00 01 */	li r5, 1
/* 805B5B94  4B E3 B6 15 */	bl goto_other_scene
/* 805B5B98  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B5B9C  38 A0 00 03 */	li r5, 3
/* 805B5BA0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805B5BA4  38 60 00 09 */	li r3, 9
/* 805B5BA8  3C 84 00 02 */	addis r4, r4, 2
/* 805B5BAC  38 00 FF FF */	li r0, -1
/* 805B5BB0  98 A4 61 4F */	stb r5, 0x614f(r4)
/* 805B5BB4  98 7E 20 D0 */	stb r3, 0x20d0(r30)
/* 805B5BB8  B0 1F 00 38 */	sth r0, 0x38(r31)
lbl_805B5BBC:
/* 805B5BBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B5BC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B5BC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B5BC8  7C 08 03 A6 */	mtlr r0
/* 805B5BCC  38 21 00 20 */	addi r1, r1, 0x20
/* 805B5BD0  4E 80 00 20 */	blr 
