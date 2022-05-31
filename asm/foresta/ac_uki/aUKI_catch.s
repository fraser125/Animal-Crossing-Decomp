lbl_804AEE70:
/* 804AEE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AEE74  7C 08 02 A6 */	mflr r0
/* 804AEE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AEE7C  80 A3 02 18 */	lwz r5, 0x218(r3)
/* 804AEE80  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 804AEE84  90 A3 00 28 */	stw r5, 0x28(r3)
/* 804AEE88  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804AEE8C  80 03 02 20 */	lwz r0, 0x220(r3)
/* 804AEE90  90 03 00 30 */	stw r0, 0x30(r3)
/* 804AEE94  80 A3 02 54 */	lwz r5, 0x254(r3)
/* 804AEE98  80 03 02 58 */	lwz r0, 0x258(r3)
/* 804AEE9C  90 A3 02 68 */	stw r5, 0x268(r3)
/* 804AEEA0  90 03 02 6C */	stw r0, 0x26c(r3)
/* 804AEEA4  80 03 02 5C */	lwz r0, 0x25c(r3)
/* 804AEEA8  90 03 02 70 */	stw r0, 0x270(r3)
/* 804AEEAC  80 03 02 34 */	lwz r0, 0x234(r3)
/* 804AEEB0  2C 00 00 05 */	cmpwi r0, 5
/* 804AEEB4  41 82 00 34 */	beq lbl_804AEEE8
/* 804AEEB8  40 80 00 3C */	bge lbl_804AEEF4
/* 804AEEBC  2C 00 00 01 */	cmpwi r0, 1
/* 804AEEC0  41 82 00 08 */	beq lbl_804AEEC8
/* 804AEEC4  48 00 00 30 */	b lbl_804AEEF4
lbl_804AEEC8:
/* 804AEEC8  38 A0 00 00 */	li r5, 0
/* 804AEECC  38 00 00 08 */	li r0, 8
/* 804AEED0  90 A3 02 88 */	stw r5, 0x288(r3)
/* 804AEED4  38 A0 00 00 */	li r5, 0
/* 804AEED8  38 C0 00 00 */	li r6, 0
/* 804AEEDC  90 03 02 8C */	stw r0, 0x28c(r3)
/* 804AEEE0  48 00 04 9D */	bl aUKI_set_proc
/* 804AEEE4  48 00 00 10 */	b lbl_804AEEF4
lbl_804AEEE8:
/* 804AEEE8  38 A0 00 09 */	li r5, 9
/* 804AEEEC  38 C0 00 00 */	li r6, 0
/* 804AEEF0  48 00 04 8D */	bl aUKI_set_proc
lbl_804AEEF4:
/* 804AEEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AEEF8  7C 08 03 A6 */	mtlr r0
/* 804AEEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AEF00  4E 80 00 20 */	blr 
