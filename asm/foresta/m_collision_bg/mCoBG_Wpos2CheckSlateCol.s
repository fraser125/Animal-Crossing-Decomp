lbl_80391544:
/* 80391544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80391548  7C 08 02 A6 */	mflr r0
/* 8039154C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80391550  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80391554  7C 9F 23 78 */	mr r31, r4
/* 80391558  80 A3 00 00 */	lwz r5, 0(r3)
/* 8039155C  80 83 00 04 */	lwz r4, 4(r3)
/* 80391560  80 03 00 08 */	lwz r0, 8(r3)
/* 80391564  38 61 00 08 */	addi r3, r1, 8
/* 80391568  90 A1 00 08 */	stw r5, 8(r1)
/* 8039156C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80391570  90 01 00 10 */	stw r0, 0x10(r1)
/* 80391574  48 01 51 99 */	bl mFI_GetUnitCol
/* 80391578  88 03 00 00 */	lbz r0, 0(r3)
/* 8039157C  88 63 00 03 */	lbz r3, 3(r3)
/* 80391580  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80391584  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 80391588  41 82 00 0C */	beq lbl_80391594
/* 8039158C  38 60 00 01 */	li r3, 1
/* 80391590  48 00 00 5C */	b lbl_803915EC
lbl_80391594:
/* 80391594  2C 1F 00 00 */	cmpwi r31, 0
/* 80391598  41 82 00 50 */	beq lbl_803915E8
/* 8039159C  2C 00 00 2B */	cmpwi r0, 0x2b
/* 803915A0  40 80 00 24 */	bge lbl_803915C4
/* 803915A4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 803915A8  40 80 00 10 */	bge lbl_803915B8
/* 803915AC  2C 00 00 1B */	cmpwi r0, 0x1b
/* 803915B0  40 80 00 28 */	bge lbl_803915D8
/* 803915B4  48 00 00 2C */	b lbl_803915E0
lbl_803915B8:
/* 803915B8  2C 00 00 25 */	cmpwi r0, 0x25
/* 803915BC  40 80 00 1C */	bge lbl_803915D8
/* 803915C0  48 00 00 20 */	b lbl_803915E0
lbl_803915C4:
/* 803915C4  2C 00 00 3B */	cmpwi r0, 0x3b
/* 803915C8  40 80 00 18 */	bge lbl_803915E0
/* 803915CC  2C 00 00 37 */	cmpwi r0, 0x37
/* 803915D0  40 80 00 08 */	bge lbl_803915D8
/* 803915D4  48 00 00 0C */	b lbl_803915E0
lbl_803915D8:
/* 803915D8  38 60 00 01 */	li r3, 1
/* 803915DC  48 00 00 10 */	b lbl_803915EC
lbl_803915E0:
/* 803915E0  38 60 00 00 */	li r3, 0
/* 803915E4  48 00 00 08 */	b lbl_803915EC
lbl_803915E8:
/* 803915E8  38 60 00 00 */	li r3, 0
lbl_803915EC:
/* 803915EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803915F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803915F4  7C 08 03 A6 */	mtlr r0
/* 803915F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803915FC  4E 80 00 20 */	blr 
