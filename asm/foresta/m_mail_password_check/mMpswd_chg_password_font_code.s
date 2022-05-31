lbl_803BDEF4:
/* 803BDEF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803BDEF8  7C 08 02 A6 */	mflr r0
/* 803BDEFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803BDF00  39 61 00 40 */	addi r11, r1, 0x40
/* 803BDF04  4B CD CF C9 */	bl func_8009AECC
/* 803BDF08  7C 7B 1B 78 */	mr r27, r3
/* 803BDF0C  3B E1 00 08 */	addi r31, r1, 8
/* 803BDF10  7F 7E DB 78 */	mr r30, r27
/* 803BDF14  3B 80 00 01 */	li r28, 1
/* 803BDF18  3B A0 00 00 */	li r29, 0
lbl_803BDF1C:
/* 803BDF1C  88 7E 00 00 */	lbz r3, 0(r30)
/* 803BDF20  4B FF FF 95 */	bl mMpswd_chg_password_font_code_sub
/* 803BDF24  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803BDF28  28 00 00 FF */	cmplwi r0, 0xff
/* 803BDF2C  40 82 00 0C */	bne lbl_803BDF38
/* 803BDF30  3B 80 00 00 */	li r28, 0
/* 803BDF34  48 00 00 1C */	b lbl_803BDF50
lbl_803BDF38:
/* 803BDF38  3B BD 00 01 */	addi r29, r29, 1
/* 803BDF3C  98 7F 00 00 */	stb r3, 0(r31)
/* 803BDF40  2C 1D 00 1C */	cmpwi r29, 0x1c
/* 803BDF44  3B FF 00 01 */	addi r31, r31, 1
/* 803BDF48  3B DE 00 01 */	addi r30, r30, 1
/* 803BDF4C  41 80 FF D0 */	blt lbl_803BDF1C
lbl_803BDF50:
/* 803BDF50  2C 1C 00 01 */	cmpwi r28, 1
/* 803BDF54  40 82 00 14 */	bne lbl_803BDF68
/* 803BDF58  7F 63 DB 78 */	mr r3, r27
/* 803BDF5C  38 81 00 08 */	addi r4, r1, 8
/* 803BDF60  38 A0 00 1C */	li r5, 0x1c
/* 803BDF64  4B C4 55 2D */	bl memcpy
lbl_803BDF68:
/* 803BDF68  7F 83 E3 78 */	mr r3, r28
/* 803BDF6C  39 61 00 40 */	addi r11, r1, 0x40
/* 803BDF70  4B CD CF A9 */	bl func_8009AF18
/* 803BDF74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803BDF78  7C 08 03 A6 */	mtlr r0
/* 803BDF7C  38 21 00 40 */	addi r1, r1, 0x40
/* 803BDF80  4E 80 00 20 */	blr 
