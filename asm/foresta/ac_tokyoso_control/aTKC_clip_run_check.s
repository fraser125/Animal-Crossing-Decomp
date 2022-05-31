lbl_804ABB78:
/* 804ABB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ABB7C  7C 08 02 A6 */	mflr r0
/* 804ABB80  38 80 00 08 */	li r4, 8
/* 804ABB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ABB88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ABB8C  93 C1 00 08 */	stw r30, 8(r1)
/* 804ABB90  7C 7E 1B 78 */	mr r30, r3
/* 804ABB94  38 60 00 0F */	li r3, 0xf
/* 804ABB98  A0 BE 00 06 */	lhz r5, 6(r30)
/* 804ABB9C  3C A5 FF FF */	addis r5, r5, 0xffff
/* 804ABBA0  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 804ABBA4  54 1F 07 FE */	clrlwi r31, r0, 0x1f
/* 804ABBA8  4B EF 22 25 */	bl mEv_get_save_area
/* 804ABBAC  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 804ABBB0  2C 04 00 00 */	cmpwi r4, 0
/* 804ABBB4  40 81 00 20 */	ble lbl_804ABBD4
/* 804ABBB8  38 04 FF FF */	addi r0, r4, -1
/* 804ABBBC  B0 1E 09 A6 */	sth r0, 0x9a6(r30)
/* 804ABBC0  A8 1E 09 A6 */	lha r0, 0x9a6(r30)
/* 804ABBC4  2C 00 00 00 */	cmpwi r0, 0
/* 804ABBC8  40 82 00 0C */	bne lbl_804ABBD4
/* 804ABBCC  38 60 00 01 */	li r3, 1
/* 804ABBD0  48 00 00 64 */	b lbl_804ABC34
lbl_804ABBD4:
/* 804ABBD4  7C 83 FA 14 */	add r4, r3, r31
/* 804ABBD8  88 04 00 1A */	lbz r0, 0x1a(r4)
/* 804ABBDC  28 00 00 08 */	cmplwi r0, 8
/* 804ABBE0  40 82 00 20 */	bne lbl_804ABC00
/* 804ABBE4  57 E0 08 3C */	slwi r0, r31, 1
/* 804ABBE8  7C 83 02 14 */	add r4, r3, r0
/* 804ABBEC  A8 04 00 16 */	lha r0, 0x16(r4)
/* 804ABBF0  2C 00 00 00 */	cmpwi r0, 0
/* 804ABBF4  40 81 00 0C */	ble lbl_804ABC00
/* 804ABBF8  38 60 00 00 */	li r3, 0
/* 804ABBFC  48 00 00 38 */	b lbl_804ABC34
lbl_804ABC00:
/* 804ABC00  57 E0 08 3C */	slwi r0, r31, 1
/* 804ABC04  7C 83 02 14 */	add r4, r3, r0
/* 804ABC08  A8 64 00 16 */	lha r3, 0x16(r4)
/* 804ABC0C  A8 04 00 12 */	lha r0, 0x12(r4)
/* 804ABC10  7C 03 00 50 */	subf r0, r3, r0
/* 804ABC14  7C 00 07 34 */	extsh r0, r0
/* 804ABC18  2C 00 FC 18 */	cmpwi r0, -1000
/* 804ABC1C  40 81 00 14 */	ble lbl_804ABC30
/* 804ABC20  2C 00 10 00 */	cmpwi r0, 0x1000
/* 804ABC24  40 80 00 0C */	bge lbl_804ABC30
/* 804ABC28  38 60 00 01 */	li r3, 1
/* 804ABC2C  48 00 00 08 */	b lbl_804ABC34
lbl_804ABC30:
/* 804ABC30  38 60 00 00 */	li r3, 0
lbl_804ABC34:
/* 804ABC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ABC38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ABC3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804ABC40  7C 08 03 A6 */	mtlr r0
/* 804ABC44  38 21 00 10 */	addi r1, r1, 0x10
/* 804ABC48  4E 80 00 20 */	blr 
