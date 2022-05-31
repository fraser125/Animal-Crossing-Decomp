lbl_803CCCB8:
/* 803CCCB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CCCBC  7C 08 02 A6 */	mflr r0
/* 803CCCC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CCCC4  39 61 00 20 */	addi r11, r1, 0x20
/* 803CCCC8  4B CC E2 09 */	bl func_8009AED0
/* 803CCCCC  7C 7C 1B 78 */	mr r28, r3
/* 803CCCD0  7C 9D 23 78 */	mr r29, r4
/* 803CCCD4  7C BE 2B 78 */	mr r30, r5
/* 803CCCD8  7C DF 33 78 */	mr r31, r6
/* 803CCCDC  38 7C 00 4A */	addi r3, r28, 0x4a
/* 803CCCE0  38 9D 00 1D */	addi r4, r29, 0x1d
/* 803CCCE4  38 A0 00 C0 */	li r5, 0xc0
/* 803CCCE8  4B FE DD 3D */	bl func_803BAA24
/* 803CCCEC  38 7C 00 32 */	addi r3, r28, 0x32
/* 803CCCF0  38 9D 00 05 */	addi r4, r29, 5
/* 803CCCF4  38 A0 00 18 */	li r5, 0x18
/* 803CCCF8  4B FE DD 2D */	bl func_803BAA24
/* 803CCCFC  38 7C 01 0A */	addi r3, r28, 0x10a
/* 803CCD00  38 9D 00 DD */	addi r4, r29, 0xdd
/* 803CCD04  38 A0 00 20 */	li r5, 0x20
/* 803CCD08  4B FE DD 1D */	bl func_803BAA24
/* 803CCD0C  88 1D 00 04 */	lbz r0, 4(r29)
/* 803CCD10  28 1E 00 00 */	cmplwi r30, 0
/* 803CCD14  98 1C 00 2F */	stb r0, 0x2f(r28)
/* 803CCD18  88 1D 00 00 */	lbz r0, 0(r29)
/* 803CCD1C  98 1C 00 2E */	stb r0, 0x2e(r28)
/* 803CCD20  A0 1D 00 02 */	lhz r0, 2(r29)
/* 803CCD24  B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 803CCD28  88 1D 00 01 */	lbz r0, 1(r29)
/* 803CCD2C  98 1C 00 31 */	stb r0, 0x31(r28)
/* 803CCD30  41 82 00 18 */	beq lbl_803CCD48
/* 803CCD34  7F C4 F3 78 */	mr r4, r30
/* 803CCD38  38 7C 00 16 */	addi r3, r28, 0x16
/* 803CCD3C  48 01 33 E5 */	bl mPr_CopyPersonalID
/* 803CCD40  38 00 00 00 */	li r0, 0
/* 803CCD44  98 1C 00 2A */	stb r0, 0x2a(r28)
lbl_803CCD48:
/* 803CCD48  28 1F 00 00 */	cmplwi r31, 0
/* 803CCD4C  41 82 00 10 */	beq lbl_803CCD5C
/* 803CCD50  7F 83 E3 78 */	mr r3, r28
/* 803CCD54  7F E4 FB 78 */	mr r4, r31
/* 803CCD58  4B FE FC 99 */	bl mMl_set_mail_name_npcinfo
lbl_803CCD5C:
/* 803CCD5C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CCD60  4B CC E1 BD */	bl func_8009AF1C
/* 803CCD64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CCD68  7C 08 03 A6 */	mtlr r0
/* 803CCD6C  38 21 00 20 */	addi r1, r1, 0x20
/* 803CCD70  4E 80 00 20 */	blr 
