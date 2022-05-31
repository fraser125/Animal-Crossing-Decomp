lbl_803FAB48:
/* 803FAB48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FAB4C  7C 08 02 A6 */	mflr r0
/* 803FAB50  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FAB54  39 61 00 20 */	addi r11, r1, 0x20
/* 803FAB58  4B CA 03 7D */	bl func_8009AED4
/* 803FAB5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 803FAB60  7C 9D 23 78 */	mr r29, r4
/* 803FAB64  3B C0 00 00 */	li r30, 0
/* 803FAB68  41 82 00 0C */	beq lbl_803FAB74
/* 803FAB6C  2C 1F 00 01 */	cmpwi r31, 1
/* 803FAB70  40 82 00 84 */	bne lbl_803FABF4
lbl_803FAB74:
/* 803FAB74  28 1D 00 00 */	cmplwi r29, 0
/* 803FAB78  41 82 00 7C */	beq lbl_803FABF4
/* 803FAB7C  7F E5 FB 78 */	mr r5, r31
/* 803FAB80  38 61 00 08 */	addi r3, r1, 8
/* 803FAB84  38 80 20 00 */	li r4, 0x2000
/* 803FAB88  4B FF CD 19 */	bl mCD_check_card
/* 803FAB8C  2C 03 00 01 */	cmpwi r3, 1
/* 803FAB90  40 82 00 64 */	bne lbl_803FABF4
/* 803FAB94  7F E3 FB 78 */	mr r3, r31
/* 803FAB98  7F A4 EB 78 */	mr r4, r29
/* 803FAB9C  38 A0 00 00 */	li r5, 0
/* 803FABA0  4B C9 5B 5D */	bl CARDMount
/* 803FABA4  2C 03 00 00 */	cmpwi r3, 0
/* 803FABA8  90 61 00 08 */	stw r3, 8(r1)
/* 803FABAC  41 82 00 0C */	beq lbl_803FABB8
/* 803FABB0  2C 03 FF FA */	cmpwi r3, -6
/* 803FABB4  40 82 00 30 */	bne lbl_803FABE4
lbl_803FABB8:
/* 803FABB8  7F E3 FB 78 */	mr r3, r31
/* 803FABBC  4B C9 51 BD */	bl CARDCheck
/* 803FABC0  2C 03 00 00 */	cmpwi r3, 0
/* 803FABC4  90 61 00 08 */	stw r3, 8(r1)
/* 803FABC8  40 82 00 10 */	bne lbl_803FABD8
/* 803FABCC  7F E3 FB 78 */	mr r3, r31
/* 803FABD0  4B FF FF 21 */	bl mCD_check_Land_exist_com
/* 803FABD4  7C 7E 1B 78 */	mr r30, r3
lbl_803FABD8:
/* 803FABD8  7F E3 FB 78 */	mr r3, r31
/* 803FABDC  4B C9 5C 05 */	bl CARDUnmount
/* 803FABE0  48 00 00 14 */	b lbl_803FABF4
lbl_803FABE4:
/* 803FABE4  2C 03 FF F3 */	cmpwi r3, -13
/* 803FABE8  40 82 00 0C */	bne lbl_803FABF4
/* 803FABEC  7F E3 FB 78 */	mr r3, r31
/* 803FABF0  4B C9 5B F1 */	bl CARDUnmount
lbl_803FABF4:
/* 803FABF4  7F C3 F3 78 */	mr r3, r30
/* 803FABF8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FABFC  4B CA 03 25 */	bl func_8009AF20
/* 803FAC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FAC04  7C 08 03 A6 */	mtlr r0
/* 803FAC08  38 21 00 20 */	addi r1, r1, 0x20
/* 803FAC0C  4E 80 00 20 */	blr 
