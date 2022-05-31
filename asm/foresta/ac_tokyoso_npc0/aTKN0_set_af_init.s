lbl_8058BDD4:
/* 8058BDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BDD8  7C 08 02 A6 */	mflr r0
/* 8058BDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058BDE4  7C 7F 1B 78 */	mr r31, r3
/* 8058BDE8  4B E4 62 71 */	bl mNpc_GetNpcSoundSpec
/* 8058BDEC  2C 03 00 04 */	cmpwi r3, 4
/* 8058BDF0  41 82 00 24 */	beq lbl_8058BE14
/* 8058BDF4  40 80 00 30 */	bge lbl_8058BE24
/* 8058BDF8  2C 03 00 03 */	cmpwi r3, 3
/* 8058BDFC  40 80 00 08 */	bge lbl_8058BE04
/* 8058BE00  48 00 00 24 */	b lbl_8058BE24
lbl_8058BE04:
/* 8058BE04  38 9F 00 28 */	addi r4, r31, 0x28
/* 8058BE08  38 60 01 5D */	li r3, 0x15d
/* 8058BE0C  48 0A 21 9D */	bl sAdo_OngenTrgStart
/* 8058BE10  48 00 00 20 */	b lbl_8058BE30
lbl_8058BE14:
/* 8058BE14  38 9F 00 28 */	addi r4, r31, 0x28
/* 8058BE18  38 60 01 5E */	li r3, 0x15e
/* 8058BE1C  48 0A 21 8D */	bl sAdo_OngenTrgStart
/* 8058BE20  48 00 00 10 */	b lbl_8058BE30
lbl_8058BE24:
/* 8058BE24  38 9F 00 28 */	addi r4, r31, 0x28
/* 8058BE28  38 60 01 16 */	li r3, 0x116
/* 8058BE2C  48 0A 21 7D */	bl sAdo_OngenTrgStart
lbl_8058BE30:
/* 8058BE30  38 00 00 73 */	li r0, 0x73
/* 8058BE34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058BE38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058BE3C  B0 1F 09 A0 */	sth r0, 0x9a0(r31)
/* 8058BE40  3C 83 00 02 */	addis r4, r3, 2
/* 8058BE44  7F E3 FB 78 */	mr r3, r31
/* 8058BE48  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 8058BE4C  38 80 00 6B */	li r4, 0x6b
/* 8058BE50  38 A0 00 00 */	li r5, 0
/* 8058BE54  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058BE58  7D 89 03 A6 */	mtctr r12
/* 8058BE5C  4E 80 04 21 */	bctrl 
/* 8058BE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BE64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058BE68  7C 08 03 A6 */	mtlr r0
/* 8058BE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BE70  4E 80 00 20 */	blr 
