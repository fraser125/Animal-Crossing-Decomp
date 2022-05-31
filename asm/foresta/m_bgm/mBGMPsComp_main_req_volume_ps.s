lbl_8037AD1C:
/* 8037AD1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037AD20  7C 08 02 A6 */	mflr r0
/* 8037AD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037AD28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037AD2C  7C 7F 1B 78 */	mr r31, r3
/* 8037AD30  80 03 01 18 */	lwz r0, 0x118(r3)
/* 8037AD34  2C 00 00 00 */	cmpwi r0, 0
/* 8037AD38  40 81 00 68 */	ble lbl_8037ADA0
/* 8037AD3C  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 8037AD40  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8037AD44  41 82 00 50 */	beq lbl_8037AD94
/* 8037AD48  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8037AD4C  41 82 00 10 */	beq lbl_8037AD5C
/* 8037AD50  38 00 00 5A */	li r0, 0x5a
/* 8037AD54  B0 1F 01 48 */	sth r0, 0x148(r31)
/* 8037AD58  48 00 00 0C */	b lbl_8037AD64
lbl_8037AD5C:
/* 8037AD5C  38 00 00 00 */	li r0, 0
/* 8037AD60  B0 1F 01 48 */	sth r0, 0x148(r31)
lbl_8037AD64:
/* 8037AD64  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8037AD68  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8037AD6C  41 82 00 14 */	beq lbl_8037AD80
/* 8037AD70  3C 60 80 64 */	lis r3, lit_1323@ha /* 0x80641330@ha */
/* 8037AD74  C0 03 13 30 */	lfs f0, lit_1323@l(r3)  /* 0x80641330@l */
/* 8037AD78  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 8037AD7C  48 00 00 10 */	b lbl_8037AD8C
lbl_8037AD80:
/* 8037AD80  3C 60 80 64 */	lis r3, lit_1324@ha /* 0x80641334@ha */
/* 8037AD84  C0 03 13 34 */	lfs f0, lit_1324@l(r3)  /* 0x80641334@l */
/* 8037AD88  D0 1F 01 44 */	stfs f0, 0x144(r31)
lbl_8037AD8C:
/* 8037AD8C  38 00 00 01 */	li r0, 1
/* 8037AD90  98 1F 01 4A */	stb r0, 0x14a(r31)
lbl_8037AD94:
/* 8037AD94  7F E3 FB 78 */	mr r3, r31
/* 8037AD98  38 80 00 12 */	li r4, 0x12
/* 8037AD9C  4B FF FC 79 */	bl mBGMPsComp_all_ps_bitclr
lbl_8037ADA0:
/* 8037ADA0  48 00 1A FD */	bl mBGMPsComp_execute_bgm_num_get
/* 8037ADA4  2C 03 00 00 */	cmpwi r3, 0
/* 8037ADA8  40 80 00 10 */	bge lbl_8037ADB8
/* 8037ADAC  3C 60 80 64 */	lis r3, lit_1325@ha /* 0x80641338@ha */
/* 8037ADB0  C0 03 13 38 */	lfs f0, lit_1325@l(r3)  /* 0x80641338@l */
/* 8037ADB4  D0 1F 01 44 */	stfs f0, 0x144(r31)
lbl_8037ADB8:
/* 8037ADB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037ADBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037ADC0  7C 08 03 A6 */	mtlr r0
/* 8037ADC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8037ADC8  4E 80 00 20 */	blr 
