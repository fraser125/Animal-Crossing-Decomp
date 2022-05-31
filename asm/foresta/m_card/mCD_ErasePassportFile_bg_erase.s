lbl_803FECD0:
/* 803FECD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FECD4  7C 08 02 A6 */	mflr r0
/* 803FECD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FECDC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FECE0  4B C9 C1 F1 */	bl func_8009AED0
/* 803FECE4  80 03 00 00 */	lwz r0, 0(r3)
/* 803FECE8  7C 9C 23 78 */	mr r28, r4
/* 803FECEC  80 84 00 04 */	lwz r4, 4(r4)
/* 803FECF0  3B A0 00 00 */	li r29, 0
/* 803FECF4  2C 00 FF FF */	cmpwi r0, -1
/* 803FECF8  41 82 00 90 */	beq lbl_803FED88
/* 803FECFC  2C 04 00 00 */	cmpwi r4, 0
/* 803FED00  41 80 00 88 */	blt lbl_803FED88
/* 803FED04  2C 04 00 7F */	cmpwi r4, 0x7f
/* 803FED08  40 80 00 80 */	bge lbl_803FED88
/* 803FED0C  1C 80 00 94 */	mulli r4, r0, 0x94
/* 803FED10  7C 1F 03 78 */	mr r31, r0
/* 803FED14  3B C4 00 54 */	addi r30, r4, 0x54
/* 803FED18  7F C3 F2 14 */	add r30, r3, r30
/* 803FED1C  7C 03 03 78 */	mr r3, r0
/* 803FED20  4B C8 F5 49 */	bl CARDGetResultCode
/* 803FED24  90 7E 00 74 */	stw r3, 0x74(r30)
/* 803FED28  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 803FED2C  2C 00 00 00 */	cmpwi r0, 0
/* 803FED30  40 82 00 40 */	bne lbl_803FED70
/* 803FED34  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FED38  38 03 00 01 */	addi r0, r3, 1
/* 803FED3C  90 1C 00 04 */	stw r0, 4(r28)
/* 803FED40  80 1C 00 04 */	lwz r0, 4(r28)
/* 803FED44  2C 00 00 7F */	cmpwi r0, 0x7f
/* 803FED48  41 80 00 18 */	blt lbl_803FED60
/* 803FED4C  7F E3 FB 78 */	mr r3, r31
/* 803FED50  4B C9 1A 91 */	bl CARDUnmount
/* 803FED54  38 00 00 04 */	li r0, 4
/* 803FED58  90 1C 00 00 */	stw r0, 0(r28)
/* 803FED5C  48 00 00 0C */	b lbl_803FED68
lbl_803FED60:
/* 803FED60  38 00 00 02 */	li r0, 2
/* 803FED64  90 1C 00 00 */	stw r0, 0(r28)
lbl_803FED68:
/* 803FED68  3B A0 00 01 */	li r29, 1
/* 803FED6C  48 00 00 30 */	b lbl_803FED9C
lbl_803FED70:
/* 803FED70  2C 00 FF FF */	cmpwi r0, -1
/* 803FED74  41 82 00 28 */	beq lbl_803FED9C
/* 803FED78  7F E3 FB 78 */	mr r3, r31
/* 803FED7C  4B C9 1A 65 */	bl CARDUnmount
/* 803FED80  3B A0 FF FF */	li r29, -1
/* 803FED84  48 00 00 18 */	b lbl_803FED9C
lbl_803FED88:
/* 803FED88  2C 00 FF FF */	cmpwi r0, -1
/* 803FED8C  41 82 00 0C */	beq lbl_803FED98
/* 803FED90  7C 03 03 78 */	mr r3, r0
/* 803FED94  4B C9 1A 4D */	bl CARDUnmount
lbl_803FED98:
/* 803FED98  3B A0 FF FF */	li r29, -1
lbl_803FED9C:
/* 803FED9C  7F A3 EB 78 */	mr r3, r29
/* 803FEDA0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FEDA4  4B C9 C1 79 */	bl func_8009AF1C
/* 803FEDA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FEDAC  7C 08 03 A6 */	mtlr r0
/* 803FEDB0  38 21 00 20 */	addi r1, r1, 0x20
/* 803FEDB4  4E 80 00 20 */	blr 
