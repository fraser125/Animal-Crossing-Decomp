lbl_803FADF0:
/* 803FADF0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803FADF4  7C 08 02 A6 */	mflr r0
/* 803FADF8  90 01 00 94 */	stw r0, 0x94(r1)
/* 803FADFC  39 61 00 90 */	addi r11, r1, 0x90
/* 803FAE00  4B CA 00 D5 */	bl func_8009AED4
/* 803FAE04  7C 7F 1B 79 */	or. r31, r3, r3
/* 803FAE08  7C 9E 23 78 */	mr r30, r4
/* 803FAE0C  3B A0 00 00 */	li r29, 0
/* 803FAE10  41 82 00 0C */	beq lbl_803FAE1C
/* 803FAE14  2C 1F 00 01 */	cmpwi r31, 1
/* 803FAE18  40 82 00 BC */	bne lbl_803FAED4
lbl_803FAE1C:
/* 803FAE1C  28 1E 00 00 */	cmplwi r30, 0
/* 803FAE20  41 82 00 B4 */	beq lbl_803FAED4
/* 803FAE24  7F E5 FB 78 */	mr r5, r31
/* 803FAE28  38 61 00 08 */	addi r3, r1, 8
/* 803FAE2C  38 80 20 00 */	li r4, 0x2000
/* 803FAE30  4B FF CA 71 */	bl mCD_check_card
/* 803FAE34  2C 03 00 01 */	cmpwi r3, 1
/* 803FAE38  40 82 00 9C */	bne lbl_803FAED4
/* 803FAE3C  7F E3 FB 78 */	mr r3, r31
/* 803FAE40  7F C4 F3 78 */	mr r4, r30
/* 803FAE44  38 A0 00 00 */	li r5, 0
/* 803FAE48  4B C9 58 B5 */	bl CARDMount
/* 803FAE4C  2C 03 00 00 */	cmpwi r3, 0
/* 803FAE50  90 61 00 08 */	stw r3, 8(r1)
/* 803FAE54  41 82 00 0C */	beq lbl_803FAE60
/* 803FAE58  2C 03 FF FA */	cmpwi r3, -6
/* 803FAE5C  40 82 00 68 */	bne lbl_803FAEC4
lbl_803FAE60:
/* 803FAE60  7F E3 FB 78 */	mr r3, r31
/* 803FAE64  4B C9 4F 15 */	bl CARDCheck
/* 803FAE68  2C 03 00 00 */	cmpwi r3, 0
/* 803FAE6C  90 61 00 08 */	stw r3, 8(r1)
/* 803FAE70  40 82 00 48 */	bne lbl_803FAEB8
/* 803FAE74  3B C0 00 00 */	li r30, 0
lbl_803FAE78:
/* 803FAE78  7F E3 FB 78 */	mr r3, r31
/* 803FAE7C  7F C4 F3 78 */	mr r4, r30
/* 803FAE80  38 A1 00 0C */	addi r5, r1, 0xc
/* 803FAE84  4B C9 77 75 */	bl CARDGetStatus
/* 803FAE88  2C 03 00 00 */	cmpwi r3, 0
/* 803FAE8C  90 61 00 08 */	stw r3, 8(r1)
/* 803FAE90  40 82 00 1C */	bne lbl_803FAEAC
/* 803FAE94  38 61 00 0C */	addi r3, r1, 0xc
/* 803FAE98  4B FF FE 71 */	bl mCD_CheckPassportFileStatus
/* 803FAE9C  2C 03 00 01 */	cmpwi r3, 1
/* 803FAEA0  40 82 00 0C */	bne lbl_803FAEAC
/* 803FAEA4  3B A0 00 01 */	li r29, 1
/* 803FAEA8  48 00 00 10 */	b lbl_803FAEB8
lbl_803FAEAC:
/* 803FAEAC  3B DE 00 01 */	addi r30, r30, 1
/* 803FAEB0  2C 1E 00 7F */	cmpwi r30, 0x7f
/* 803FAEB4  41 80 FF C4 */	blt lbl_803FAE78
lbl_803FAEB8:
/* 803FAEB8  7F E3 FB 78 */	mr r3, r31
/* 803FAEBC  4B C9 59 25 */	bl CARDUnmount
/* 803FAEC0  48 00 00 14 */	b lbl_803FAED4
lbl_803FAEC4:
/* 803FAEC4  2C 03 FF F3 */	cmpwi r3, -13
/* 803FAEC8  40 82 00 0C */	bne lbl_803FAED4
/* 803FAECC  7F E3 FB 78 */	mr r3, r31
/* 803FAED0  4B C9 59 11 */	bl CARDUnmount
lbl_803FAED4:
/* 803FAED4  7F A3 EB 78 */	mr r3, r29
/* 803FAED8  39 61 00 90 */	addi r11, r1, 0x90
/* 803FAEDC  4B CA 00 45 */	bl func_8009AF20
/* 803FAEE0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 803FAEE4  7C 08 03 A6 */	mtlr r0
/* 803FAEE8  38 21 00 90 */	addi r1, r1, 0x90
/* 803FAEEC  4E 80 00 20 */	blr 
